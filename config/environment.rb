# Load the rails application
require File.expand_path('../application', __FILE__)

# linked_in keys
ENV['LINKEDIN_API_KEY'] = '8qajosowioeb'
ENV['LINKEDIN_SECRET_KEY']= 'om8gKvDJIhKkdc2Q'

# facebook keys
ENV['FACEBOOK_KEY'] = '478552618828384'
ENV['FACEBOOK_SECRET'] = 'de849c1b4286ef64efa08abca1606fdd'

# twitter keys
ENV['TWITTER_CONSUMER_KEY'] = 'E7zYzlMEyK4VAOBJNkBVAQ'
ENV['TWITTER_CONSUMER_SECRET'] = 'X5v0XCHaNOuI1UTK3G8uazY8W1oRDIZH2bRZ8pjLUI'

# Initialize the rails application
Starter::Application.initialize!
