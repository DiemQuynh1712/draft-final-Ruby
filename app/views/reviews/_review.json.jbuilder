json.extract! review, :id, :name, :star, :review, :created_at, :updated_at
json.url review_url(review, format: :json)
