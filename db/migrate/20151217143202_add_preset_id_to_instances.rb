class AddPresetIdToInstances < ActiveRecord::Migration
  def change
    add_column :instances, :preset_id, :integer
  end
end
