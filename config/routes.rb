Rails.application.routes.draw do
  get 'top', to: 'home#top'
  get 'about', to: 'home#about'
end
