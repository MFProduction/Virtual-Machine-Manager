class VirtualMachinesController < ApplicationController
  def index
    @vms = VirtualMachine.all
  end

  def new
  end
end
