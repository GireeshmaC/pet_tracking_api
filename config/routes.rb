Rails.application.routes.draw do
  resources :owners do
    get 'pets', on: :member
  end
  resources :pets
end