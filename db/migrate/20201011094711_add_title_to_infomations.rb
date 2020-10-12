class AddTitleToInfomations < ActiveRecord::Migration[5.2]
  def change
    add_column :infomations, :titles, :string
  end
end
