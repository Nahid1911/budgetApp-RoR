json.extract! tran_group, :id, :user_id, :groupName, :icon, :amount, :created_at, :updated_at
json.url tran_group_url(tran_group, format: :json)
