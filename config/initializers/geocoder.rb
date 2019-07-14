# config/initializers/geocoder.rb
Geocoder.configure(
  lookup: :google,
  api_key: ENV["geocoder_api_key"],
)