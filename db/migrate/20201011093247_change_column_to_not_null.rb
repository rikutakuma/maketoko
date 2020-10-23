class ChangeColumnToNotNull < ActiveRecord::Migration[5.2]
  
  def up
  	change_column :favorites, :user_id, :integer, null: true
  	change_column :favorites, :send_id, :integer, null: true
  	change_column :relationships, :user_id, :integer, null: true
  	change_column :relationships, :store_id, :integer, null: true
  	change_column :infomations, :introduction, :text, null: true
  	change_column :infomations, :info_image_id, :string, null: true
  end

  def down
  	change_column :favorites, :user_id, :integer, null: false
  	change_column :favorites, :send_id, :integer, null: false
  	change_column :relationships, :user_id, :integer, null: false
  	change_column :relationships, :store_id, :integer, null: false
  	change_column :infomations, :introduction, :text, null: false
  	change_column :infomations, :info_image_id, :string, null: false
  end
end
