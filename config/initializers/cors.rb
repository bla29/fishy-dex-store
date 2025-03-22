# config/initializers/cors.rb
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "https://fishy-dex-production.up.railway.app/"  # Change this to the URL of your frontend

    resource "*",
      headers: :any,
      methods: [ :get, :post, :put, :patch, :delete, :options, :head ],
      credentials: true  # Allow cookies if needed
  end
end
