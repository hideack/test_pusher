require 'rubygems'
require 'pusher'
require 'eventmachine'
require 'em-http-request'
require './pusher-setting.rb'

Pusher.app_id = PUSHER_APPID 
Pusher.key = PUSHER_ID 
Pusher.secret = PUSHER_SECRET 

EM.run {
	deferrable = Pusher['test_channel'].trigger_async('test_event', 'Hello, pussher!! via Ruby')

	deferrable.callback { 
		puts "success!"
		EM.stop
	}

	deferrable.errback { |error| 
		puts error
		EM.stop
	}
}

