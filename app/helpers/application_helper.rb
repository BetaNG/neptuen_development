module ApplicationHelper
	def page_title(icon,title,desc)
		"<i class='#{icon} themed-color'></i>#{title}<br><small>#{desc}</small>".html_safe
	end	
end	