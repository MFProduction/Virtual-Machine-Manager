class InstancesController < ApplicationController
  def index
    @instances = Instance.all
  end

  def show
    @instance = Instance.find(params[:id])
    @vm = VirtualMachineService.get(@instance.instance_id)
  end

  def new
    @instance = Instance.new
  end

  def create
    #binding.pry
    #@instance = Instance.create(instance_params.merge(:instance_id => "ididid"))
    @instance = Instance.new(instance_params)    
    if @instance.valid?

         #server = Fog::Compute[:aws].servers.create(image_id: "ami-f0091d91", name: params[:name], flavor_id:"t2.micro")
         #server.wait_for { ready? }
         #@instance.instance_id = server.id
         #@instance.save   
      CreateInstanceWorker.perform_async(params[:instance][:name])
      flash[:positive] = "Instance has been created (waiting for server to respond) #{params[:instance][:name]}"
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
