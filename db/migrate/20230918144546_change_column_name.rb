class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :tran_details, :user_id, :author_id
  end
end
