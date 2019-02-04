module ApplicationHelper
  def glyphicon(icon)
    raw %(<span class="glyphicon glyphicon-#{icon}" aria-hidden="true"></span>)
  end
end
