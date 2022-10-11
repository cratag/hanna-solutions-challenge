Rails.application.routes.draw do
  get 'home/index'
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  post "home/index"
  post "create_transaction", to: "home#create_account_transaction"
  # Defines the root path route ("/")
  root "home#index"
end
