class VirtualMachines < ActiveRecord::Migration
  def change
    create_table :virtual_machines do |t|
      t.string :instance_id
      t.string :instance_name

      t.timestamps null: false
    end
  end
end
