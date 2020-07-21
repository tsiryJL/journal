 # ligne très importante qui appelle la gem.
require 'twitter'
# n'oublie pas les lignes pour Dotenv ici…
require 'dotenv'
Dotenv.load('.env')

client = Twitter::REST::Client.new do |config|
	config.consumer_key        = ENV["TWITTER_API_KEY"]
	config.consumer_secret     = ENV["TWITTER_API_SECRET"]
	config.access_token        = ENV["TWITTER_ACCES_TOKEN "]
	config.access_token_secret = ENV["TWITTER_ACCES_TOKEN_SECRET"]
  end
  
puts ENV['TWITTER_API_SECRET']
puts ENV['BEST_WEBSITE_EVER']
   # ligne qui permet de tweeter sur ton compte
  client.update('Mon premier tweet en Ruby!!!!')
