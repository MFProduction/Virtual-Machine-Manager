class CreateInstances < ActiveRecord::Migration
  def change
    create_table :instances do |t|
      # General
      t.string :name
      t.string :company # and other data for customer
      t.text :description

      # Instance
      t.string :instance_id
      t.string :flavor_id
      t.string :image_id

      ## groups
      #t.string :security_group_ids #need Serialization or new table

      t.string :private_ip
      t.string :public_ip
      t.string :availability_zone
      t.string :private_dns_name
      t.string :dns_name

      

      t.timestamps null: false
    end
  end
end
