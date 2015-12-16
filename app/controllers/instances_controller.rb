class InstancesController < ApplicationController
  def index
    @vms = Instance.all
    ShowInstanceWorker.perform_async("bob")
  end

  def show
    @vm = Instance.find(params[:id])
    @ec2 = VirtualMachineService.get('i-70e5d0b4')
  end

  def new
    @instance = Instance.new
  end

  def create
    CreateInstanceWorker.perform_async("name1")
    @instance = Instance.new(instance_params)    
    if @instance.valid?
      flash[:positive] = "Instance has been created (waiting for server to respond"
      redirect_to instances_path

    else
      render :new
    end
  end

  private
    def instance_params
      params.require(:instance).permit(:name)
    end

end
