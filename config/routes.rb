Rails.application.routes.draw do

  # Public
  namespace :public do

    # Resouces
    resources :articles

  end

  # Root Welcome Page
  root 'pages#welcome'

end
