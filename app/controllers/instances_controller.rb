class InstancesController < ApplicationController
  def index
    @instances = Instance.all
  end

  def show
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
      CreateInstanceWorker.perform_async(name, preset_id)
      flash[:positive] = "#{name} is being processed"
      redirect_to instances_path

    else
      render :new
    end
  end

  private
    def instance_params
      params.require(:instance).permit(:name, :preset_id)
    end

end
