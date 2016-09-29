json.extract! liftdatum, :id, :exercise, :set, :rep, :weight, :created_at, :updated_at
json.url liftdatum_url(liftdatum, format: :json)