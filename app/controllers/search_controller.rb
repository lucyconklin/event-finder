class SearchController < ApplicationController
  def index
    params[:date] = "March"
    zipcode = params[:q]
    date = params[:date]
    @events = EventFinder.for_date(date, zipcode)
  end
end
