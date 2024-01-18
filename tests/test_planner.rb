require 'minitest/autorun'
require 'stringio'
require_relative './../session'

class TestPlanner < Minitest::Test
  def test_event_creation
    session = Session.new

    string_io = StringIO.new
    string_io.puts "Taylor Swift\nSoldier Field\n07:30 pm\n300.50\n"
    string_io.rewind
    $stdin = string_io
    event = session.create_event
    $stdin = STDIN

    assert_equal "Taylor Swift", event.artist_name
    assert_equal "Soldier Field", event.venue
    assert_equal "07:30 pm", event.time
    assert_equal "300.50", event.price
  end
end
