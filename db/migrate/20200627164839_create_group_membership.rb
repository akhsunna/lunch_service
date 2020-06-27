class CreateGroupMembership < ActiveRecord::Migration[6.0]
  def change
    create_table :group_memberships do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :group, null: false, foreign_key: true
      t.integer :role

      t.timestamps
    end
  end
end
