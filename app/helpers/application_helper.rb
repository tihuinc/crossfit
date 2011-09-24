module ApplicationHelper
  def current_url
    "#{request.scheme}://#{request.env['HTTP_HOST']}#{request.fullpath}"
  end
end
