class Instance < ActiveRecord::Base
  belongs_to :preset
  
  validates :name, presence: true
  
  # They are added after the first validation
  # validates :instance_id, presence: true
  # validates :flavor_id, presence: true
  # validates :image_id, presence: true
  # validates :private_ip, presence: true
  # validates :public_ip, presence: true
  # validates :dns_name, presence: true
  # validates :private_dns_name, presence: true
  # validates :availability_zone, presence: true

end