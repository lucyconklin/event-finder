class Event
  attr_reader :title,
              :start_time,
              :description,
              :venue_name,
              :venue_address,
              :going,
              :url

  def initialize(attrs = {})
    @title          = attrs["title"]
    @start_time     = attrs["start_time"]
    @description    = shorten(attrs["description"])
    @venue_name     = attrs["venue_name"]
    @venue_address  = attrs["venue_address"]
    @going          = attrs["going"]
    @url            = attrs["url"]
  end

  def shorten(description)
    description[0...140] if description
  end
end
