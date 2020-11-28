json.extract! schedule, :id, :title, :start, :end, :consultant_id, :account_id, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
