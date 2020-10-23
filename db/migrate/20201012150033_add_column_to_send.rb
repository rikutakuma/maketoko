class AddColumnToSend < ActiveRecord::Migration[5.2]
  def change
    add_column :sends, :title, :string
  end
end
