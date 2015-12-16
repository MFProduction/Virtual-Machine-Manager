class VirtualMachineService
  def self.get(id)
    #TODO
      Fog::Compute[:aws].servers.get(id)
  end
end