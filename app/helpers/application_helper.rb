module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "SuiteSparse Matrix Collection"
    if page_title.empty? || page_title == "Index"
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def render_ajax_loading_animation
    %(
      <span class="filterrific_spinner" style="display:none;">
          #{ image_tag('ajax_loader.gif') }
      </span>
    ).html_safe
  end
end
