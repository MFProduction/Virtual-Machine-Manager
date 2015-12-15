class VirtualMachinesController < ApplicationController
  def index
    @vms = VirtualMachine.all
    flash[:negative] = "Hello my friend"
  end

  def show
    @vm = VirtualMachine.find(params[:id])
    @ec2 = VirtualMachineService.get(@vm.instance_id)
  end
end
