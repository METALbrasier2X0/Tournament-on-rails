Rails.application.routes.draw do
  resources :tournois
 root to: redirect('/tournois')
end
