class InstancesController < ApplicationController
  def index
    @instances = Instance.all
  end

  def show
    @instance = Instance.find(params[:id])
    @server = IstanceService.get(@instance.instance_id)
  end

  def new
    @instance = Instance.new
  end

  def create
    #binding.pry
    @instance = Instance.new(instance_params)    
    if @instance.valid?
      name = params[:instance][:name]
      CreateInstanceWorker.perform_async(name, )
      flash[:positive] = "Instance for #{name} is being processed."
      redirect_to instances_path

    else
      render :new
    end
  end

  private
    def instance_params
      params.require(:instance).permit(:name, :instance_id)
    end

end
