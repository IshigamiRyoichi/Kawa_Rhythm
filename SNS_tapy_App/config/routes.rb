Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'oprate_sns/main'
  post 'oprate_sns/main',to: 'oprate_sns#main'
end
