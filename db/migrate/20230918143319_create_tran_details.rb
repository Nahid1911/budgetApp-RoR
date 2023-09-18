class CreateTranDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :tran_details do |t|
      t.string :itemDetails
      t.references :user, null: false, foreign_key: true
      t.references :tranGroup, null: false, foreign_key: true
      t.float :amount

      t.timestamps
    end
  end
end
