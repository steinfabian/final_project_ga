module ApplicationHelper

	def intellinav
	    nav = ''
	    if @current_customer.present?
	      nav += "<li>" + link_to('My account', account_path) + "</li> "
	      nav += "<li>#{ link_to('Sign out', login_path, :method => :delete, :data => {:confirm => 'Are you sure?'}) }</li>"
	    else
	    	nav += "<li>" + link_to('Sign in', login_path) + "</li>" 
	    end
	    nav
	end

end
