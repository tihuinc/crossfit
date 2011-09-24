class Grabber::WorkoutGrabber

  def self.grab
    page = Grabber::PageGrabber.grab
    workout_content = page.at("#tomorrowwod").text
    Workout.create(:content => workout_content, :date => Time.now)
  end

  # This method should only be called when grabbing failed for tomorrow
  def self.grab_today
    page = Grabber::PageGrabber.grab
    workout_date = page.at('h3').text.gsub("WOD for ","").to_date
    workout_content = HtmlToText.convert(page.at(".wod").to_s)
    Workout.create(:content => workout_content, :date => workout_date)
  end

end