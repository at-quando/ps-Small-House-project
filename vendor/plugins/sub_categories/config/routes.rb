Spina::Engine.routes.draw do
  namespace :admin, path: Spina.config.backend_path do
    resources :sub_categories
  end
end
