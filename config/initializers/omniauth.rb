Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :developer unless Rails.env.production?
  provider :twitter, Rails.application.secrets.twitter_api_key, Rails.application.secrets.twitter_api_secret
  # ENV['p9YoGdjxIBA3gZ1r2RErkZ8AZ'], ENV['6ZWnTwGF4pB7zFx1tL2Gj0xgJTmd02jNcvmzGmpulaDr3OdPDF']
end