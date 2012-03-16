module ApplicationHelper

  # Return a title on per page basis
  def title
    base_title = "Ruby on Rails Tutorial Twitter Clone"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def logo
    logo = image_tag("logo.png", :alt => "Sample App", :class => "round")

  end

end
