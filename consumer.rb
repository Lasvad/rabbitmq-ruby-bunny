
require 'bunny'

bunny_connection = Bunny.new(hostname: '0.0.0.0:5672')
bunny_connection.start

channel = bunny_connection.create_channel

# Looking for messagesing on the channel 
queue = channel.queue('RabbitMQ_radio')

begin
  puts 'Waiting for a message!'

  queue.subscribe(block: true) do |_delivery_info, _properties, body|
    puts "Message from producer: #{body}"
  end
rescue Interrupt
  bunny_connection.close
  exit(0)
end