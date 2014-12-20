Rails.application.routes.draw do

  root to: 'welcome#index'
  get 'welcome/index'
  get 'home', to: 'home#index'

  resources :brands, only: [:index, :new, :create] do
    collection do
      get  :ajax_brand_list
    end
    resources :liquors, only: [:index, :new, :create], shallow: true do
      resources :impressions, except: [:index, :show]
    end
  end

  devise_for :users
  resources :users, only: [:show, :edit, :update] do
    member do
      get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]

end
