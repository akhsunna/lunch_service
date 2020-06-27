class JoinMenuItemsAndWeeklyMenus < ActiveRecord::Migration[6.0]
  def change
    create_join_table :menu_items, :weekly_menus do |t|
      t.index :weekly_menu_id
    end
  end
end
