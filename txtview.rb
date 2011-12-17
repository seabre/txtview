require 'bundler/setup'
require 'sinatra'
require 'base64'
require 'sanitize'
require 'zlib'

def urlsafe_decode_base64(data)
  return data.tr('-_','+/').unpack('m')[0]
end

def inflate(data)
  zstream = Zlib::Inflate.new
  buf = zstream.inflate(string)
  zstream.finish
  zstream.close
  return buf
end

error do
  e = request.env['sinatra.error']
  Kernel.puts e.backtrace.join("\n")
  'Application error'
end

get '/' do
  erb :index
end
  
get '/txt/:txt' do
    @txt = Sanitize.clean(inflate(urlsafe_decode_base64(params[:txt])))
    erb :txt
  end
