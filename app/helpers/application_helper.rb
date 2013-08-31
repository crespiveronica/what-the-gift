module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "What The Gift?!"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def inside_layout(parent_layout)
	  view_flow.set :layout, capture { yield }
	  render template: "layouts/#{parent_layout}"
	end
end
