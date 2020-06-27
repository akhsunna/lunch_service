class CreateWeeklyMenu < ActiveRecord::Migration[6.0]
  def change
    create_table :weekly_menus do |t|
      t.date :start_date
      t.date :end_date
    end
  end
end
