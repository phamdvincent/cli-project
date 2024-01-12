require_relative "event_list"
require_relative "event"

class Session

  def initialize()
    @event_list = EventList.new
  end
  
  def show_instructions
    puts "Type in the number associated with the command you want to use:"
    puts "1. Show all events"
    puts "2. Add an event"
    puts "3. Remove an event"
    puts "4. Exit program"
    puts "\n"
    puts "Type 'help' to show instructions."
  end

  def welcome
    puts "Welcome to the Musical Event Planner!"
    puts "\n"
    self.show_instructions
  end

  def get_input
    print "Enter command ('help' for list of commands): "
    command = gets.chomp
    return command
  end

  def create_event
    print "Enter artist's name (e.g. Taylor Swift): "
    artist_name = gets.chomp
    print "Enter venue's name (e.g. Soldier Field): "
    venue = gets.chomp
    print "Enter event start time (e.g. 07:30 pm): "
    time = gets.chomp
    print "Enter price in USD (e.g. 300.50): $"
    price = gets.chomp
    event = Event.new(artist_name, venue, time, price)
    return event
  end

  def remove_index
    print "Enter index of event to remove (e.g. 5): "
    index = gets.chomp.to_i
    return index
  end

  def handle_command(command)
    case command
    when "help"
      self.show_instructions
    when "1"
      @event_list.show_all
    when "2"
      event = self.create_event
      @event_list.add(event)
    when "3"
      index = self.remove_index
      @event_list.remove(index)
    else
      puts "Invalid Command"
    end

  end

  def run
    self.welcome
    loop do
      command = self.get_input
      if command == "4"
        puts "Thank you for using Musical Event Planner!"
        break
      else
        self.handle_command(command)
      end
    end
  end
end
