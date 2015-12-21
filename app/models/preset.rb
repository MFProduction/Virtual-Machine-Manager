class Preset < ActiveRecord::Base
  has_many :instances

  validates :name, presence: true
  validates :flavor_id, presence: true
  validates :image_id, presence: true
end