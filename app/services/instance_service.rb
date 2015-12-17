class InstanceService
  def self.get(id)
    instance = Instance.find(id)
    Fog::Compute[:aws].servers.get(instance.instance_id)
  end

  def self.stop(id)
    instance = Instance.find(id)
    Fog::Compute[:aws].servers.get(instance.instance_id).stop
  end

  def self.start(id)
    instance = Instance.find(id)
    Fog::Compute[:aws].servers.get(instance.instance_id).start
  end
  
  def self.get_state(id)
    Fog::Compute[:aws].servers.get(id).state
  end
end