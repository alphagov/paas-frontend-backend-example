require 'sinatra'

class Frontend < Sinatra::Base
  set :public_folder, File.dirname(__FILE__) + '/static'

  get "/" do
    erb :index, layout: :layout
  end
end

