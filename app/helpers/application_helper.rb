module ApplicationHelper

  def title
    @title.nil? ? 'Demo App' : @title
  end
end
