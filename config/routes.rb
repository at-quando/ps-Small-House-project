Rails.application.routes.draw do
  resources :home
  resources :articles, except: [:show]
  resources :albums
  resources :students
  resources :teachers
  get "/" => redirect("/home")
  get "/bai-viet/:id" => 'links#about_house', :as => 'single_article_id'
  get "/tac-pham" => 'albums#index', :as => 'tac_pham'
  get "/giang-vien" => 'teachers#index'
  get '/:name' => 'links#about_house', :as => 'single_article', :constraints => { :name => /(?!(admin|home)).*/ }
  mount Spina::Engine   => '/'
end
