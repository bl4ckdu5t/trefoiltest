Rails.application.routes.draw do

  get 'dashboard' => 'dashboard#index', as: :dashboard_path
  get 'login' => 'sessions#new'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'
end
