class VirtualMachine < ActiveRecord::Base

  validates :instance_id, presence: true
  validates :instance_name, presence: true
end
