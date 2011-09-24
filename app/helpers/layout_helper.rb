# These helper methods can be called in your template to set variables to be used in the layout
# This module should be included in all views globally,
# to do so you may need to add this line to your ApplicationController
#   helper :layout
module LayoutHelper
  def title(page_title, show_title = true)
    content_for(:title) { page_title.to_s }
    @show_title = show_title
  end
  
  def show_title?
    @show_title
  end
  
  def stylesheet(*args)
    content_for(:head) { stylesheet_link_tag(*args) }
  end
  
  def javascript(*args)
    content_for(:head) { javascript_include_tag(*args) }
  end
  
  def escaped_name(s)
     CGI.escape(s)
  end

  
  def fb_timeline_meta(url, title, description)
    content_for(:fb_timeline_meta) do
      %Q{<head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# mproll-crossfit: http://ogp.me/ns/fb/mproll-crossfit#">
        <meta property="fb:app_id"      content="150346335059375"> 
        <meta property="og:type"        content="mproll-crossfit:workout"> 
        <meta property="og:url"         content="#{url}"> 
        <meta property="og:title"       content="#{title}"> 
        <meta property="og:description" content="#{description}"> 
        <meta property="og:image"       content="http://ogp.me/logo.png">}.html_safe
    end
  end
end
