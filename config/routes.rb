Rails.application.routes.draw do
  resources :home
  resources :articles
  resources :albums
  resources :students
  resources :teachers
  get "/" => redirect("/home")
  get "/tac-pham" => 'albums#index'
  get "/giang-vien" => 'teachers#index'
  get '/:name' => 'links#about_house', :as => 'single_article', :constraints => { :name => /(?!.*?admin)(?!.*?home)/ }
  mount Spina::Engine   => '/'
end

