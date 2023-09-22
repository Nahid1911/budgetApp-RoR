class CreateTranGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :tran_groups do |t|
      t.references :user, null: false, foreign_key: true
      t.string :groupName
      t.string :icon
      t.integer :amount

      t.timestamps
    end
  end
end
