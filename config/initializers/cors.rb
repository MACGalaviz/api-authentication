Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins "http://localhost:3000"
        resource "*",header: :any, methods: [:get, :post, :put, :pacth, :delete, :options, :head],
        credentials: true
    end
    allow do
        origins "https://api-authentication.herokuapp.com"
        resource "*",header: :any, methods: [:get, :post, :put, :pacth, :delete, :options, :head],
        credentials: true
    end
end