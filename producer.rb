
require 'bunny'

bunny_connection = Bunny.new(hostname: '0.0.0.0:5672')
bunny_connection.start

channel = bunny_connection.create_channel

# creating a queue called 'rabbitMQ_radio'. Consumers will need to look at this channel to receive messages
queue = channel.queue('RabbitMQ_radio')

channel.default_exchange.publish("Hello RabbitMQ!", routing_key: queue.name)
puts "Message Published!"

bunny_connection.close