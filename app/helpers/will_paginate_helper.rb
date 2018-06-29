# This is a set of functions/classes related to the will_paginate gem

module WillPaginateHelper
  
  # This class redefines how a link is rendered in will_paginate pagination
  class LinkRenderer < WillPaginate::ActionView::BootstrapLinkRenderer
  	
  	# This function specializes how a link is rendered
    def link(text, target, attributes = {})
      
      # Add 'data-remote=true' to all pagination links to allow an ajax update 
      # with no reload of the page.
      attributes['data-remote'] = true

      # Now finish rendering the link as usual by calling the superclass
      super
      
    end
  end
end