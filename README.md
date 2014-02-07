# Twandom: Open random following's profile in your browser

I follow too many people, but I don't want to unfollow everyone. There is no effective way to find dead accounts, people I want to unfollow for XYZ reason.

Here comes Twandom! A small Ruby script opening X browser tab (or maybe window?) with random people you follow. Now, unfollow them, or not.

# Installation

- clone this repo
- run `bundle install`

# Configuration

Set those environment variables:

- ENV['TWANDOM_consumer_key']
- ENV['TWANDOM_consumer_secret']
- ENV['TWANDOM_access_token']
- ENV['TWANDOM_access_token_secret']

# run

- run `ruby twandom.rb 10` where 10 is the number of random following's people you want to look at

# License

Do whatever you want, just don't blame me or creators of gems I used.