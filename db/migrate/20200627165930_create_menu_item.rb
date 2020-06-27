class CreateMenuItem < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_items do |t|
      t.string :type
      t.integer :category
      t.string :title
      t.integer :grams
      t.string :description
      t.monetize :price

      t.timestamps
    end
  end
end
