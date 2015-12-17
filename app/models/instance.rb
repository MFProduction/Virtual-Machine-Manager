class Instance < ActiveRecord::Base
  belongs_to :preset
  #validates :instance_id, presence: true
  validates :name, presence: true
end