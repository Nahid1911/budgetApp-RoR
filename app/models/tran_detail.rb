class TranDetail < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_and_belongs_to_many :tran_groups, join_table: 'tran_details_tran_groups'

  validates :itemDetails, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :author, presence: true
end
