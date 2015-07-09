module ApplicationHelper

	def full_title(page='')
		default = "Cockies"
		if page.empty?
			default
		else
			page
		end
	end
end
