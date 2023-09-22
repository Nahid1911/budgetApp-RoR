class AddReferencesToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :tran_group, foreign_key: true
    add_reference :users, :tran_detail, foreign_key: true
  end
end
