class Event
  attr_reader :
  # STEP 2
  # make attr_readers for some of them,
  # or Josh's Groupon _attribute method instead

  def initialize(search_parameters = {})
    # STEP 1
    # pull out the parameters I am going to use
  end

  def self.for_date(date)
    # STEP 3
    # Make test and methods for retrieving desired events
    EventFinder.for_date(date).map do |event_hash|
      new(event)
    end
  end

end
