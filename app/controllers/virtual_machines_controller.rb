class VirtualMachinesController < ApplicationController
  def index
    @vms = VirtualMachine.all
  end

  def show
    @vm = VirtualMachine.find(params[:id])
    @ec2 = Fog::Compute[:aws].servers.get('i-70e5d0b4')
  end
end
