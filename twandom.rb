require 'twitter'
require 'pry'
require 'launchy'

# Super robust argument parsing
number_of_following_to_open = ARGV.first

# Let's connect on that Twitter thing
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV['TWANDOM_consumer_key']
  config.consumer_secret     = ENV['TWANDOM_consumer_secret']
  config.access_token        = ENV['TWANDOM_access_token']
  config.access_token_secret = ENV['TWANDOM_access_token_secret']
end

# Who are your friends?
friend_ids = client.friend_ids

# How many "friends" do you think you have?
following_count = friend_ids.attrs[:ids].length

# WHO ARE THEY?
number_of_following_to_open.to_i.times do
  random_twitter_id = friend_ids.attrs[:ids][rand(0..following_count)]
  user_url = client.user(random_twitter_id).uri.to_s
  puts "Opening #{user_url}..."
  Launchy.open(user_url)
end