json.extract! contact, :id, :name, :email, :content, :category, :integer, :created_at, :updated_at
json.url contact_url(contact, format: :json)
