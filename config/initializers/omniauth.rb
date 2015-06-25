Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :google_oauth2,
           ENV['GOOGLE_CONSUMER_KEY'],
           ENV['GOOGLE_CONSUMER_SECRET']
  # provider :twitter,
  #          ENV['TWITTER_CONSUMER_KEY'],
  #          ENV['TWITTER_CONSUMER_SECRET']
  provider :linked_in,
           ENV['LINKED_IN_CONSUMER_KEY'],
           ENV['LINKED_IN_CONSUMER_SECRET']
end
