module ApplicationHelper
	def full_title(page_title='')
		base_title = "Bomb Inside`s StartUp"
		if page_title.empty?
			base_title
			else
			"#{page_title} | #{base_title}"			
		end		
	end

    def active_class_menu(link_path)
    	current_page?(link_path) ? "active" : ""
    end

	#def nav_link_to (clic_text, action, url, style)
	#	if action_name == action
	#		return link_to click_text, url, :class => style
	#	else
	#		return link_to click_text, url
	#	end		
	#end 
end