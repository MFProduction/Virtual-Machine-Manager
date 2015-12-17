class InstanceService
  def self.get(instance_id)
      Fog::Compute[:aws].servers.get(instance_id)
  end

  def self.get_state(id)
    Fog::Compute[:aws].servers.get(id).state
  end
end