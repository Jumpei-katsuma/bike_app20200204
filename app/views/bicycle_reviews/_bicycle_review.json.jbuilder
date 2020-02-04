json.extract! bicycle_review, :id, :review_text, :bicycle_id, :user_id, :start, :end, :star, :created_at, :updated_at
json.url bicycle_review_url(bicycle_review, format: :json)
