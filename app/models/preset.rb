class Preset < ActiveRecord::Base
  has_many :instances
  #before_save :check_preset

  validates :name, presence: true
  validates :flavor_id, presence: true
  validates :image_id, presence: true
  
  private
    def check_preset
      PresetService.check(:image_id, :flavor_id)
    end
end