# rabbitmq-ruby-bunny
Basic setup for RabbitMQ via Docker using Ruby Bunny Gem

Implmentation of the following guide, except using RabbitMQ via a docker container
https://www.rabbitmq.com/tutorials/tutorial-one-ruby.html

Docker Setup
1. `docker pull rabbitmq`
2. `docker network create myapp_net`
3. `docker run -d -network myapp_net --hostname my-rabbit --name some-rabbit rabbitmq:3 -p 15672:15672 -p 5672:5672`
    - be sure to setup the port forwards.

Ruby Setup
1. Install a version of ruby. Ruby-install and chruby are great local tools for managing Ruby versions
2. Install the bunny client (http://rubybunny.info/). `gem install bunny`

Run the Scripts!

Open two tabs in terminal and run each script.

`ruby consumer.rb`
`ruby producer.rb`
