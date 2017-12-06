require 'twitter'

class Twit < Post

  @@client = Twitter::REST::Client.new do |config|
    config.consumer_key = 'YDY8GJwf8cCNcfeFe23qK2rQq'
    config.consumer_secret = 'ey2eeOp3fGR2f60uE6T3MNT8JN1LN7npV4Kir6lXZxMKot0Ofd'
    config.access_token = '938444925326196737-mvnGEtMK04r91tuS6WxZ7jvFdL2biBe'
    config.access_token_secret = 'hv7uMQ89TxnWyL1gTNSP3yicMqVm8z9ZUbGRrc4qjMgjf'
  end

  def read_from_console
    puts "New twit (max 140 characters) :"

    @text = STDIN.gets.chomp[0..140]
  end

  def write_file
    puts "Posting the twit \"#{@text}\""
    @@client.update(@text)

    puts "Done"
  end

end