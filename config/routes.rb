Rails.application.routes.draw do
  post "/array/create" , to: "array#create"
  get "/array/:id" , to: "array#show"
end
