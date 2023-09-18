json.extract! tran_detail, :id, :itemDetails, :user_id, :tranGroup_id, :amount, :created_at, :updated_at
json.url tran_detail_url(tran_detail, format: :json)
