class InstancesController < ApplicationController
  def index
    @instances = Instance.all
  end

  def show
    #binding.pry
    @instance = Instance.find(params[:id])
    @server = InstanceService.get(@instance.id)
  end

  def new
    @instance = Instance.new
    @presets = Preset.all
  end

  def create
   # binding.pry
    @instance = Instance.new(instance_params)
    #@preset = Preset.find(params[:preset][:])
    #@instance.image_id = @preset.image_id
    #@instance.flavor_id = @preset.flavor_id 
    if @instance.valid?
      name = params[:instance][:name]
      preset_id = params[:instance][:preset_id]
      CreateInstanceWorker.perform_async(params[:instance])
      flash[:positive] = "#{name} is being processed"
      redirect_to instances_path

    else
      render :new
    end
  end

  def action
    instance = Instance.find(params[:id])
    action = params[:instance_action]
    if action == "start"  
      InstanceService.start(instance.id)
      redirect_to :back
    else
      InstanceService.stop(instance.id)
      redirect_to :back
    end
  end

  private
    def instance_params
      params.require(:instance).permit(:name, :preset_id, :company, :description)
    end

end
