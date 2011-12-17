require 'txtview'
 
root_dir = File.dirname(__FILE__)
 
set :environment, ENV['RACK_ENV'].to_sym
set :root,        root_dir
set :app_file,    File.join(root_dir, 'txtview.rb')
disable :run

log = File.new("logs/sinatra.log", "a")
STDOUT.reopen(log)
STDERR.reopen(log)
 
run Sinatra::Application
