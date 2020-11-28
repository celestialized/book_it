json.extract! consultation, :id, :title, :duration_in_minutes, :cost_in_pennies, :category, :level, :description, :number_of_sessions, :sku, :created_at, :updated_at
json.url consultation_url(consultation, format: :json)
