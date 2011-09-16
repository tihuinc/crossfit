class Grabber::WodGrabber

  def self.grab
    page = Grabber::PageGrabber.grab
    wod_content = page.at("#tomorrowwod").text
    Wod.create(:content => wod_content, :date => Time.now)
  end

  # This method should only be called when grabbing failed for tomorrow
  def self.grab_today
    page = Grabber::PageGrabber.grab
    wod_date = page.at('h3').text.gsub("WOD for ","").to_date
    wod_content = HtmlToText.convert(page.at(".workout").to_s)
    Wod.create(:content => wod_content, :date => wod_date)
  end

end