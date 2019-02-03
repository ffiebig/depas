json.extract! apartment, :id, :price, :common_expenses, :total_price, :built_square_meters, :terrace_square_meters, :bedroom_count, :bathroom_count, :near, :comment, :contact_status, :link, :created_at, :updated_at
json.url apartment_url(apartment, format: :json)
