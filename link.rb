class Link < Post

  def initialize
    super
    @url = ''
  end

  def read_from_console
    puts 'Enter the adres of the link'
    @url = STDIN.gets.chomp

    puts 'Enter the description of the link?'
    @text = STDIN.gets.chomp
  end

  def to_strings
    time_string = "Created in #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"
    [@url, @text, time_string]
  end
end