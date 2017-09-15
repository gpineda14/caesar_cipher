require './caesar_cipher'
require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  erb :form
end

post '/encrypt' do
  message = params["message"]
  shift = params["shift"].to_i
  encrypted_message = caesar_cipher(message, shift) unless message.nil?
  erb :message, :locals => {:encrypted_message => encrypted_message}
end
