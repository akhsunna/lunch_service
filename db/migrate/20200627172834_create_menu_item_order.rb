class CreateMenuItemOrder < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_item_orders, id: false do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :group, null: false, foreign_key: true
      t.belongs_to :menu_item, null: false, foreign_key: true, index: false
      t.belongs_to :weekly_menu, null: false, foreign_key: true

      t.integer :servings_count
      t.date :date

      t.timestamps
    end
  end
end
