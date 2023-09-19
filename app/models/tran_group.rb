class TranGroup < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :tran_details, join_table: "tran_details_tran_groups"
end
