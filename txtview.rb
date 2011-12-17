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
  
get '/txt/:txt' do
    begin
    @txt = Sanitize.clean(Base64.urlsafe_decode64(params[:splat].join()))
    erb :txt
    rescue
      404
    end
  end
