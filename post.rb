class Post
  def initialize
    @text = nil
    @created_at = Time.now
  end

  def self.post_type
    [Note, Link, Task]
  end

  def self.create(type_index)
    post_type[type_index].new
  end

  def read_from_console
    # todo
  end

  def to_strings
    # todo
  end

  def write_file
    file = File.new(file_path, 'w:UTF-8')

    for item in to_strings
      file.puts(item)
    end

    file.close
  end

  def file_path
    current_path = File.dirname(__FILE__)
    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")
    current_path + '/Posts/' + file_name
  end
end
