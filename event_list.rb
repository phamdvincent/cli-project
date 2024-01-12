require_relative "event"

Class EventList
  attr_accessor :list
  
  def initialize()
    @list = []
  end

  def show_all
    if @list.empty?
      puts "Event list is empty."
    else
      @list.each do |event, index|
        index += 1
        puts "Event ##{index}: "
        puts "Artist: #{event.artist_name}"
        puts "Venue: #{event.venue}"
        puts "Time: #{event.event_time}"
        puts "Price: #{event.price}"
        puts "/n"
    end
  end

  def add(event)
    @list << Event.new(event)
  end

  def remove(index)
    @list.delete_at(index - 1)
  end
def
end
