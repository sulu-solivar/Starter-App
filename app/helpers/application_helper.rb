module ApplicationHelper

	def beautify_params key, value = nil, key_width = 200
		if value
			contents = content_tag(
					'b', key, :class => 'fl', :style => "width:#{key_width}px;"
				) + content_tag(
					'div', value, :class => 'light_text', :style => "margin-left:#{key_width+10}px;"
				)
			
			return content_tag( 
				'div', contents, :class => 'beautify_params'
			)
		end
	end

	def image_radius size = 5
		"-webkit-border-radius: #{size}px; -moz-border-radius: #{size}px; border-radius: #{size}px;"
	end

	def link_user user = nil, opts = {}
		if user
			link_to user.name, user_path(user.id), opts
		end
	end

	def user_image user, size = nil, opts = {}
		if user
			get_width = opts[:width].presence ? "#{opts[:width]}px" : "100px"
			image = user.image 
			if image
				image = image.split('?')[0] if (size == 'small')
				image_tag( image, opts.merge( :style => "#{ image_radius(0) } #{opts[:style]}", :width => get_width ) ) 
			else
				content_tag('div', '', opts.merge( :style => "#{ image_radius(0) } #{opts[:style]}", :width => get_width, :class => 'default_profile_pic' ) )
			end
		end
	end

	def labeled_radio id, name, value, width = 100, toggle_type = "", label_id = nil
		input = raw("<input type='radio' name='#{name}' value='#{value}' class='mll fl' id='#{id}' />")
		span = content_tag 'span', value.capitalize, :class => 'mls fl'
		clearfix = content_tag 'div', ' ', :class => 'clearfix'
		
		content_tag 'label', input + span + clearfix, :for => id, :class => "radio_label #{toggle_type}", :style => "width: #{width}px;", :id => label_id
	end
	
	def pull_large_fb_pic image_url
		image_url.split('?')[0]+'?type=large'
	end

	def pull_normal_fb_pic image_url
		image_url.split('?')[0]
	end

	def fb_profile
		if current_user.authentications.find_by_provider('facebook')
			return 'http://facebook.com/profile.php?id=' + current_user.authentications.find_by_provider('facebook').uid
		else
			return '#'
		end
	end

	def full_name user
		if user
			user.first_name + " " + user.last_name
		end
	end

	def placeholder width, height
		image_tag "http://placehold.it/#{width}x#{height}"
	end
	
end
