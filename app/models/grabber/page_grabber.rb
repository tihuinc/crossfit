class Grabber::PageGrabber
  def self.agent
    @agent ||= Mechanize.new
  end

  def self.grab
    page ||= agent.get(DEFAULT_GYM_URL)
  end
end