class CreateUser < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :phone
      t.integer :role

      t.timestamps
    end
  end
end
