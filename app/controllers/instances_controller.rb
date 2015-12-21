class InstancesController < ApplicationController
  before_action :find_instance, only: [:show, :action, :start, :stop]
  before_action :find_server, only: [:show]
  

  def index
    @instances = Instance.all
  end

  def show
  end

  def new
    @instance = Instance.new
    @presets = Preset.all
  end

  def create
    @instance = Instance.new(instance_params)
    if @instance.valid?
      CreateInstanceWorker.perform_async(params[:instance])
      flash[:positive] = "#{params[:instance][:name]} is being processed"
      redirect_to instances_path
    else
      render :new
    end
  end

  def start
      InstanceService.start(@instance.id)
      redirect_to :back
   end
   def stop
      InstanceService.stop(@instance.id)
      redirect_to :back
   end
  

  private
    def instance_params
      params.require(:instance).permit(:name, :preset_id, :company, :description)
    end

    def find_instance
      @instance = Instance.find(params[:id])
    end

    def find_server
      @server = InstanceService.get(@instance.id)
    end
end
