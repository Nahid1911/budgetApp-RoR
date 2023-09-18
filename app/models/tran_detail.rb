class TranDetail < ApplicationRecord
  belongs_to :user
  belongs_to :tran_groups
end
