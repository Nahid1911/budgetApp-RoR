class TranDetail < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_and_belongs_to_many :tran_groups, join_table: 'tran_details_tran_groups'
end
