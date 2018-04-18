Rails.application.routes.draw do
  resources :send_mails
  get 'send_mail/send_mail'

  get 'get_ip/get_ip'

  resource :get_ip, controller: :get_ip

  root to: "get_ip#get_ip"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
