Rails.application.routes.draw do

  get 'import/show_form'
  post 'import/review'
  get 'import/review'
  post 'import/perform'
  post 'import/decline'

  get 'raise/exception'
  get 'import', to: 'import#index', as: 'imports'
  
  resources :customers
  resources :orders

  resources :cats do
    post 'notify', on: :member
  end

#  resoures :dogs
#  get 'cats/:id/notify', to: 'cats#notify', as: 'notify_cat'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
