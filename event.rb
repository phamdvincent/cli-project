Class Event
  attr_accessor :artist_name, :venue, :time, :price
  
  def initialize(artist_name, :venue, time, price)
    @artist_name = artist_name
    @venue = venue
    @time = time
    @price = price
  end

end
