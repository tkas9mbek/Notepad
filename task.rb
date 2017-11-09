require 'date'

class Task < Post

  def initialize
    super
    @due_date = Time.now
  end

  def read_from_console
    puts "What do you want to do?"
    @text = STDIN.gets.chomp

    puts "Enter the deadline in form dd.mm.YYYY, e.g. 11.9.2017"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "Created in #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"
    deadline = "Deadline: #{@due_date}"
    [deadline, @text, time_string]
  end
end