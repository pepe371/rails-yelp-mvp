Rails.application.routes.draw do
  # /restaurants/...
  resources :restaurants, only: %i[index show new create] do
    # .../reviews/new
    resources :reviews, only: [ :new, :create ]
  end

  # resources :restaurants do
  #   resources :reviews, only: [ :new, :create ]
  # end
  # resources :reviews, only: [ :destroy ]
end
