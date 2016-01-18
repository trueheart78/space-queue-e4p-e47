Rails.application.routes.draw do
  resources :astronauts
  root 'astronauts#index'
end
