Rails.application.routes.draw do
  resources :attractions

#  devise_for :users do
#    resources :trips, only: [:index, :show],
#    :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
#  end
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :trips 




  devise_scope :user do
    authenticated :user do
      root to: 'welcome#index'
    end

    unauthenticated do
      root to: 'devise/sessions#new'
    end

  #  delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end

  #devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
