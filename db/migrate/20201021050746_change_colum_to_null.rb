class ChangeColumToNull < ActiveRecord::Migration[5.2]
  def up
  	change_column :sends, :send_image_id, :string, null: true
  end

  def down
  	change_column :sends, :send_image_id, :string, null: false
  end
end
