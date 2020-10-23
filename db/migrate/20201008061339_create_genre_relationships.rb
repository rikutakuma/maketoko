class CreateGenreRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :genre_relationships do |t|
      t.integer :genre_id, null: false
      t.integer :send_id, null: false

      t.timestamps
    end
  end
end
