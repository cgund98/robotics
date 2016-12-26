Rails.application.routes.draw do


    root 'pages#index'
    get 'first' => 'pages#first'
    get 'press' => 'pages#press'
    get 'outreach' => 'pages#outreach'
    get 'press' => 'pages#viewpress'
    get 'press/new' => 'pages#newpost'
    get 'calendar' => 'pages#calendar'
    get '/post/:title' => 'pages#show'
    # get 'contact' => 'pages#contact'

    # get 'signup' => 'users#signup'

    get 'login' => 'sessions#new'
    post 'login' => 'sessions#create'
    get 'logout' => 'sessions#destroy'

    get 'admin' => "admin#home"
    get 'admin/outreach' => 'admin#manage_outreach'
    get 'admin/outreach/new' => 'admin#new_outreach'
    get '/admin/post/:id/edit' => 'admin#edit_post'
    get 'admin/post/:id/delete' => 'admin#delete_post'
    patch 'admin/post/:id' => 'admin#update_post'

    post '/outreach' => 'admin#create_outreach'
    get 'admin/press' => 'admin#manage_press'
    get 'admin/press/new' => 'admin#new_press'
    post '/press' => 'admin#create_press'
    get 'admin/members' => 'admin#manage_members'
    get 'admin/widgets' => 'admin#manage_widgets'
    get 'admin/widgets/:id/edit' => 'admin#edit_widget'
    patch 'admin/widgets/:id' => 'admin#update_widget'

    get 'admin/users' => 'admin#manage_users'
    get 'admin/users/new' => 'admin#new_user'
    post 'admin/users' => 'admin#create_user'
    get 'admin/users/:id/edit' => 'admin#edit_user'
    patch 'admin/users/:id' => 'admin#update_user'
    get 'admin/users/:id/delete' => 'admin#delete_user'
    resources :users

    # get 'post/:id/edit' => 'posts#edit' as: :edit_post
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
