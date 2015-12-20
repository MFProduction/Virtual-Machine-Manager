class PresetService
  def self.check(image_id, flavor_id)
    Fog::Compute[:aws].images.get(image_id)
  end
end