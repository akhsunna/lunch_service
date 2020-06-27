class CreateLunchDish < ActiveRecord::Migration[6.0]
  def change
    create_table :lunch_dishes, id: false do |t|
      t.belongs_to :lunch
      t.belongs_to :dish, index: false
    end
  end
end
