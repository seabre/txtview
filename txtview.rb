require 'bundler/setup'
require 'sinatra'
require 'base64'
require 'sanitize'

error do
  e = request.env['sinatra.error']
  Kernel.puts e.backtrace.join("\n")
  'Application error'
end

get '/' do
  erb :index
end
  
get '/txt/*' do
    @txt = Sanitize.clean(Base64.decode64(params[:splat][0]))
    erb :txt
  end
