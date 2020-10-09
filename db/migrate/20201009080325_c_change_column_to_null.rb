class CChangeColumnToNull < ActiveRecord::Migration[5.2]
   def up
  	change_column_null :stores, :area_id, true
  	change_column_null :stores, :store_image_id, true
  	change_column_null :stores, :store_introduction, true
   end

    def down
  	change_column_null :stores, :area_id, false
  	change_column_null :stores, :store_image_id, false
  	change_column_null :stores, :store_introduction, false
   end

end
