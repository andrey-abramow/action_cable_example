Rails.application.routes.draw do
  resource  :session
  devise_for :users
  root 'tests#test'
end
