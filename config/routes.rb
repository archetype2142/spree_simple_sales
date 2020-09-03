Spree::Core::Engine.add_routes do
  # Add your extension routes here
  Spree::Core::Engine.routes.draw do
    get "/sale", to: "home#sale"
  end
end
