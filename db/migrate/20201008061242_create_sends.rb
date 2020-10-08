class CreateSends < ActiveRecord::Migration[5.2]
  def change
    create_table :sends do |t|
      t.integer :store_id, null: false
      t.text :send_comment, null: false
      t.string :send_image_id, null: false

      t.timestamps
    end
  end
end
