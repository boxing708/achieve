Rails.application.routes.draw do
  devise_for :users
  root :to => "blogs#index"
  resources :contacts
  #asオプションをつけると名前付きヘルパーとしてdone_pathとdone_urlが作成される
  post 'contacts/confirm', to: 'contacts#confirm', as: 'confirm'
  post 'contacts/back', to: 'contacts#back', as: 'back'
  get 'done', to: 'contacts#done', as: 'done'
  resources :blogs
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
