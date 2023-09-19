class CreateJoinTableTranDetailsTranGroups < ActiveRecord::Migration[7.0]
    def change
      create_table :tran_details_tran_groups, id: false do |t|
        t.bigint :tran_detail_id
        t.bigint :tran_group_id
      end
  
      add_index :tran_details_tran_groups, :tran_detail_id
      add_index :tran_details_tran_groups, :tran_group_id
    end
end
