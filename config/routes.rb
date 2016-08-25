Rails.application.routes.draw do

  resources :produces
  root  'home#index'

  get   'home'          =>  'home#index'
  get   'about'         =>  'home#about'
  get   'contact'       =>  'home#contact'

end
