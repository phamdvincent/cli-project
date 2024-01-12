require_relative "event"

class EventList
  attr_accessor :list
  
  def initialize()
    @list = []
  end

  def show_all
    if @list.empty?
      puts "Event list is empty."
    else
      @list.each_with_index do |event, index|
        index_num = index.to_i + 1
        puts "\n"
        puts "Event ##{index_num}: "
        puts "Artist: #{event.artist_name}"
        puts "Venue: #{event.venue}"
        puts "Time: #{event.time}"
        puts "Price: $#{event.price}"
        puts "\n"
      end
    end
  end

  def add(event)
    @list << event
  end

  def remove(index)
    @list.delete_at(index - 1)
  end

end
