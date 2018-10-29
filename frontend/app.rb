require 'sinatra/base'

class Frontend < Sinatra::Base
  set :public_folder, File.dirname(__FILE__) + '/static'

  get "/" do
    erb :index, layout: :layout
  end

  run! if __FILE__ == $0
end

