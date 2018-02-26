Rails.application.routes.draw do
  resources :home
  resources :articles
  resources :albums
  resources :students
  resources :teachers
  
  get "/" => redirect("/home")
  mount Spina::Engine => '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
