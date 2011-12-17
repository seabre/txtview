require 'sinatra'
require 'base64'

error do
  e = request.env['sinatra.error']
  Kernel.puts e.backtrace.join("\n")
  'Application error'
end

get '/' do
  erb :index
end
  
get '/txt/:txt' do
    @txt = Base64.decode64(params[:txt])
    erb :txt
  end
