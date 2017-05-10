Rails.application.routes.draw do
  get 'home/index'
  post 'home/write'
  post 'home/reply_write'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
