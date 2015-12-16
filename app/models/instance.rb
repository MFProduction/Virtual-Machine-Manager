class Instance < ActiveRecord::Base

  #validates :instance_id, presence: true
  validates :name, presence: true
end