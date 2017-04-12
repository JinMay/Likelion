Rails.application.routes.draw do
    root 'home#index'

    # get '/' => 'home#send_email'
    # post '/' => 'home#send_email'

    post 'home/email' => 'home#send_email'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
