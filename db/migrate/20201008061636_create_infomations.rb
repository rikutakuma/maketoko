class CreateInfomations < ActiveRecord::Migration[5.2]
  def change
    create_table :infomations do |t|
      t.integer :store_id, null: false
      t.text :introduction, null: false
      t.string :info_image_id, null: false

      t.timestamps
    end
  end
end
