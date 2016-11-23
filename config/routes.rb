Rails.application.routes.draw do
  resources :tournois
 get '/' => 'tournois#index'
end
