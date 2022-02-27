json.extract! client, :id, :name, :cpf, :cep, :state, :street, :number, :created_at, :updated_at
json.url client_url(client, format: :json)
