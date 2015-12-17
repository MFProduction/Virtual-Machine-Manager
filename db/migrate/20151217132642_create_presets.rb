class CreatePresets < ActiveRecord::Migration
  def change
    create_table :presets do |t|
      t.string :name
      t.string :image_id
      t.string :flavor_id
    end
  end
end
