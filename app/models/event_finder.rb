class EventFinder
  def self.for_date(date, zipcode)
    response = Faraday.get("http://api.eventful.com/json/events/search?location=#{zipcode}&date=#{date}&page_size=16&sort_order=popularity&app_key=#{ENV["eventful_app_key"]}")
    event_hash = JSON.parse(response.body)["events"]["event"]
    e = event_hash.map do |event|
      Event.new(event)
    end
    e
  end
end
