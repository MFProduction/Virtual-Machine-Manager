class VirtualMachineService
  def self.get(id)
    Fog::Compute[:aws].servers.get(id)
  end
end