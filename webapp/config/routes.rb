Rails.application.routes.draw do

    root 'pages#index'
    get 'first' => 'pages#first'
    get 'press' => 'pages#press'
    get 'outreach' => 'pages#outreach'
    get 'press' => 'pages#viewpress'
    get 'press/new' => 'pages#newpost'
    post 'press' => 'pages#createpost'
    get 'calendar' => 'pages#calendar'

    # get 'signup' => 'users#signup'
    resources :users

    get 'login' => 'sessions#new'
    post 'login' => 'sessions#create'
    get 'logout' => 'sessions#destroy'

    get 'admin' => "admin#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
