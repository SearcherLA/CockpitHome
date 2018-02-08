Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'static/welcome'

  get 'static/dashboard'

  root to: 'static#dashboard'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
