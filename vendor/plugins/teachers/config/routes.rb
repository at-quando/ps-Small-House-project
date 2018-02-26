Spina::Engine.routes.draw do
  namespace :admin, path: Spina.config.backend_path do
    resources :teachers, except: [:show]
  end
end