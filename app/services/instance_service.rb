class InstanceService
  def self.get(id)
    get_instance(id)
  end

  def self.stop(id)
    get_instance(id).stop
  end

  def self.start(id)
    get_instance(id).start
  end

  def self.create(preset_id)
    Fog::Compute[:aws].servers.create(image_id: get_preset_image_id(preset_id), flavor_id: get_preset_flavor_id(preset_id))
  end
  
  private
    def self.find_instance(id)
      Instance.find(id)
    end

    def self.instance_id(id)
      find_instance(id).instance_id
    end

    def self.fog_compute_get(id)
      Fog::Compute[:aws].servers.get(id)
    end

    def self.get_instance(id)
      fog_compute_get(instance_id(id))
    end
    
    def self.get_preset(preset_id) 
      Preset.find(preset_id)
    end

    def self.get_preset_image_id(preset_id)
      get_preset(preset_id).image_id
    end

    def self.get_preset_flavor_id(preset_id)
      get_preset(preset_id).flavor_id
    end
end