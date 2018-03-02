Spina::Engine.routes.draw do
  namespace :admin, path: Spina.config.backend_path do
    resources :articles
    delete 'favorite_article/:id' => 'articles#delete_favorite_article', :as => 'delete_favorite_article'
    patch 'favorite_article_slider/:id' => 'articles#favorite_article_slider', :as => 'favorite_article_slider'
    patch 'favorite_article_workshop/:id' => 'articles#favorite_article_workshop', :as => 'favorite_article_workshop'
  end
end
