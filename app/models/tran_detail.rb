class TranDetail < ApplicationRecord
  belongs_to :user
  belongs_to :tranGroup
end
