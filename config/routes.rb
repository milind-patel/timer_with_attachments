Rails.application.routes.draw do
	resources :attachments,only: [:new, :create, :index]
  root to: "home#index"
  get 'plays' => "home#plays"
  post 'log_timer' => 'home#log_timer'
  get 'images/:sequence' => 'home#images'
end
