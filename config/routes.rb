Rails.application.routes.draw do
  get 'validation_codes/create'

  namespace :api do
    namespace :v1 do
      resource :validation_codes, only: [:create]
      resource :session, only: [:create,:destroy]
      resource :me, only: [:show]
      resource :items
      resource :tags
    end
  end
end
