class InstanceService
  def self.get(id)
    instance = Instance.find(id)
    Fog::Compute[:aws].servers.get(instance.instance_id)
  end

  def self.get_state(id)
    Fog::Compute[:aws].servers.get(id).state
  end
end