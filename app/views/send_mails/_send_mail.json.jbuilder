json.extract! send_mail, :id, :email, :string, :created_at, :updated_at
json.url send_mail_url(send_mail, format: :json)
