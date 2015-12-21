class Instance < ActiveRecord::Base
  belongs_to :preset
  validates :name, presence: true
  
  # They are added after the first validation on the controller
  # validates :instance_id, presence: true
  # validates :flavor_id, presence: true
  # validates :image_id, presence: true
  # validates :private_ip, presence: true
  # validates :public_ip, presence: true
  # validates :dns_name, presence: true
  # validates :private_dns_name, presence: true
  # validates :availability_zone, presence: true
  def self.new_with_server_and_params(params, server)
    Instance.new(
    name: params["name"],
    company: params["company"],
    description: params["description"],
    preset_id: params["preset_id"],
    instance_id: server.id,
    image_id: server.image_id,
    flavor_id: server.flavor_id,
    private_ip: server.private_ip_address,
    public_ip: server.public_ip_address,
    availability_zone: server.availability_zone,
    dns_name: server.dns_name,
    private_dns_name: server.private_dns_name
    )
  end

end

