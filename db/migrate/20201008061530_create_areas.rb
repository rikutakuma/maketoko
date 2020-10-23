class CreateAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :areas do |t|
      t.string :area_name, null: false
      t.boolean :is_active, null: false, default: true

      t.timestamps
    end
  end
end
