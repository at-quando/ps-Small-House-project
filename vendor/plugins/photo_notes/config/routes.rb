Spina::Engine.routes.draw do
  namespace :admin, path: Spina.config.backend_path do
    delete 'favorite_photo/:id' => 'notes#delete_favorite_photo', :as => 'delete_favorite_photo'
    patch 'favorite_photo/:id' => 'notes#favorite_photo', :as => 'favorite_photo'
    resources :notes, except: [:show]
  end
end