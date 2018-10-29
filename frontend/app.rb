require 'sinatra/base'
require 'open-uri'

def get_art_from_backend()
  backend_url = ENV.fetch('BACKEND_URL')
  result = nil
  open(backend_url) do |f|
    result = JSON.parse(f.read)
    logger.info(result)
  end
  result
end

class Frontend < Sinatra::Base
  enable :logging
  set :public_folder, File.dirname(__FILE__) + '/static'

  get "/" do
    begin
      art = get_art_from_backend
      erb :index, layout: :layout, locals: art
    rescue StandardError => err
      logger.error "Unable to reach backend: #{err.inspect}"
      erb :error, layout: :layout
    end
  end

  run! if __FILE__ == $0
end

