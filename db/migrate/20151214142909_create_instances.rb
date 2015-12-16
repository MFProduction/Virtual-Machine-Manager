class CreateInstances < ActiveRecord::Migration
  def change
    create_table :instances do |t|
      t.string :instance_id
      t.string :name
      t.string :type
      t.string :public_ip
      t.string :availability_zone

      t.timestamps null: false
    end
  end
end
