Rails.application.routes.draw do
    root 'home#index'

    # get '/' => 'home#send_email'
    # post '/' => 'home#send_email'

    post 'home/email' => 'home#send_email'
    get '/list' => 'home#list'
    get '/delete/:id' => 'home#delete'

    get 'edit/:id' => 'home#edit'
    post 'update/:id' => 'home#update'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
