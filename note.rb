class Note < Post

  def read_from_console
    puts "New note (to end enter \"end\") :"

    @text = []
    line = nil

    while line != "end"
      line = STDIN.gets.chomp
      @text << line
    end

    @text.pop
  end

  def to_strings
    time_string = "Created in #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"
    @text.unshift(time_string)
  end
end