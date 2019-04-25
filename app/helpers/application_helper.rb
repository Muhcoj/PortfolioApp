module ApplicationHelper
	def login_helper style= ''
		if current_user.is_a?(GuestUser)
			(link_to 'Register', new_user_registration_path, class: style) +
			" ".html_safe +
			(link_to 'login', new_user_session_path, class: style)
		else  
      link_to 'logout', destroy_user_session_path, method: :delete, class: style 
    end 
	end

	def source_helper(styles)
		if session[:source] 
			greeting = "Thanks for visiting me from #{session[:source]}, please feel free to #{ link_to 'contact me', contact_path } if you'd like to work together"
			content_tag(:div, greeting.html_safe, class: styles)
    end
	end

	def copyright_generator
		JochumViewTool::Renderer.copyright 'Jochum de Bueger', 'All rights reserved'
	end

	def nav_items
		[
			{
				url: root_path,
				title: 'Home'
			},
			{
				url: about_me_path,
				title: 'About me'
			},
			{
				url: contact_path,
				title: 'Contact'
			},
			{
				url: news_path,
				title: 'News'
			},
			{
				url: blogs_path,
				title: 'Blog'
			},
			{
				url: portfolios_path,
				title: 'Portfolio'
			}
		]
	end

	def nav_generator style, tag_type
		nav_links= ''
		nav_items.each do |item|
			nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
		end
		nav_links.html_safe
	end

	def active? path
		"active" if current_page? path
	end

	def alerts
		alert = (flash[:error] || flash[:alert] || flash[:notice])

		if alert
			alert_generator alert 
		end
	end	

	def alert_generator msg
		js add_gritter(msg, title: "Jochum de Bueger Portfolio", sticky: false, time: 2000)
	end
end


