Rails.application.config.middleware.use OmniAuth::Builder do

	fb_permissions = fb_permissions = 'email,offline_access,read_stream,user_about_me,user_birthday,user_education_history,user_hometown,user_location,user_photos,user_relationships,user_relationship_details,user_work_history,user_website'

	provider :linked_in, ENV['LINKEDIN_API_KEY'], ENV['LINKEDIN_SECRET_KEY']
	provider :twitter, ENV['TWITTER_CONSUMER_KEY'], ENV['TWITTER_CONSUMER_SECRET']
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'],
  				 :scope => fb_permissions, :display => 'popup'
end