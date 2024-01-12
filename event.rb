Class Event
  attr_accessor :artist_name, :venue, :event_time, :price
  
  def initialize(artist_name, :venue, event_time, price)
    @artist_name = artist_name
    @venue = venue
    @event_time = event_time
    @price = price
  end

end
