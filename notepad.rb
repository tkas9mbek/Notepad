#UTF-8 Encodimg
#For russian letters in Windows
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding( Encoding.default_external, Encoding.default_internal)
  end
end

require_relative 'post.rb'
require_relative 'note.rb'
require_relative 'task.rb'
require_relative 'link.rb'

puts "What you want to write in notepad?"

choices = Post.post_type

choice = -1

until choice >= 0 && choice < choices.size
  choices.each_with_index do |type, index|
    puts "\t#{index}. #{type}"
  end

  choice = STDIN.gets.chomp.to_i
end

entry = Post.create(choice)

entry.read_from_console

entry.write_file

puts "Your #{choices[choice]} was saved"