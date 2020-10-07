Rails.application.routes.draw do
    resources :articles do
        resources :comments
    end
    resources :tags
    resources :authors, only: [ :new, :create, :destroy ]
    get 'login' => 'author_sessions#new'
    get 'logout' => 'author_sessions#destroy'
    root to: 'articles#index'
end