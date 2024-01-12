require_relative "event"

Class EventList
  attr_accessor :list
  
  def initialize()
    @list = []
  end

  def show_all
    @list.each do |event, index|
      index += 1
      puts "Event ##{index}: "
      puts "Artist: #{event.artist_name}"
      puts "Venue: #{event.venue}"
      puts "Time: #{event.event_time}"
      puts "Price: #{event.price}"
      puts
    end
  end

  def add(artist_name, venue, event_time, price)
    @list << Event.new(artist_name, venue, event_time, price)
  end

  def remove(index)
    @list.delete_at(index - 1)
  end
def
end
