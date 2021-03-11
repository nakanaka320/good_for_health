Rails.application.routes.draw do
  root to: "products#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    collection do
      get 'step1'
      get 'registration/step1', to: 'users#step1_save' 
      get 'step2'
      post 'registration/step2', to: 'users#step2_save'
      # get 'step2'
      # get 'registration-step2', to: 'users#step2_save'
      # get 'step3'
      # post 'registration-step3', to: 'users#step3_save'
      # # get 'step4'
      # post 'registration-step4', to: 'users#step4_save'
      # get 'step_complet'
      # get 'sign_up_choice'
      # get 'adress'
    end
  end
end
