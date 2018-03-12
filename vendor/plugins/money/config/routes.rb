Spina::Engine.routes.draw do
  namespace :admin, path: Spina.config.backend_path do
    resources :money, except: [:show]
    get 'index_fee' => 'money#index_fee', :as => 'index_fee'
    get 'index_back_fee' => 'money#index_back_fee', :as => 'index_back_fee'
    patch 'minus/:id' => 'money#minus_dept', :as => 'minus_dept'
    patch 'minus/:id/:minus_id' => 'money#minus_dept', :as => 'minus_dept_wid'
    patch 'plus/:id/:minus_id' => 'money#plus_dept', :as => 'plus_dept'
  end
end