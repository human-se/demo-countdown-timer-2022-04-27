Rails.application.routes.draw do
  root to: redirect('/auctions')
  resources :auctions
end
