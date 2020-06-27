class CreateGroup < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :address
      t.string :join_code

      t.timestamps
    end
  end
end
