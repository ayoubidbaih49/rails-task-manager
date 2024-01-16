Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "tasks", to: "pages#index"

  get "tasks/new",to: "pages#new"
  post "tasks",to: "pages#create"

  get "tasks/:id", to: "pages#show", as: "task"
  get "tasks/:id/edit",to: "pages#edit"
  patch "tasks/:id",to: "pages#update"

  delete "tasks/:id",to: "pages#delete"

  # Defines the root path route ("/")
  # root "posts#index"
end
