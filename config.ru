# This file is used by Rack-based servers to start the application.
require "rubygems"
require "bundler"

Bundler.require(:default)

Faye::WebSocket.load_adapter('thin')
bayeux = Faye::RackAdapter.new(:mount => '/faye')
run bayeux
