module ApplicationHelper

  def title
    @title.nil? ? 'Demo App' : @title
  end

  def logo
    image_tag("logo.png", :alt => "Sample App", :class => "round")
  end
  
end
