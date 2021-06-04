Rails.application.routes.draw do
  namespace :api do

    namespace :v1 do
      post "array/create" , to: "array#create"
      get "array/:id" , to: "array#show"
    end
  end
end
