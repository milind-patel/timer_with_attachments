Rails.application.routes.draw do
	resources :attachments,only: [:new, :create, :index]
  root to: "home#index"
end
