json.extract! manager, :id, :name, :email, :password, :created_at, :updated_at
json.url manager_url(manager, format: :json)
