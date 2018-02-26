Spina::Engine.routes.draw do
  namespace :admin, path: Spina.config.backend_path do
    resources :students
    delete 'favorite_student/:id' => 'students#delete_favorite_student', :as => 'delete_favorite_student'
    patch 'favorite_student/:id' => 'students#favorite_student', :as => 'favorite_student'
  end
end
