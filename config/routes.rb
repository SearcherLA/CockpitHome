Rails.application.routes.draw do
  get 'static/welcome'

  get 'static/dashboard'

  root to: 'static#welcome'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
