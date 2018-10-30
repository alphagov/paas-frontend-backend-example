require 'json'
require 'sinatra/base'

def get_random_art()
  [
    {url:'https://www.gac.culture.gov.uk/gacdb/images/Large/12095-4.jpg', title:'Paradox No III', artist:'Derek Hirst', date: '1975'},
    {url:'https://www.gac.culture.gov.uk/gacdb/images/Large/01506.jpg', title:'Grantley Hall through Trees', artist:'Carel Weight', date: 'c.1950-1952'},
    {url:'https://www.gac.culture.gov.uk/gacdb/images/Large/02046.jpg', title:'Mount Athos from above Iscoro, 21 September 1856', artist:'Edward Lear', date: '21 September 1856'},
    {url:'https://www.gac.culture.gov.uk/gacdb/images/Large/09484.jpg', title:'Furnival\'s Inn, Interior', artist:'John Grieg', date: '1817'},
  ].sample
end

class Backend < Sinatra::Base
  get "/" do
    JSON.pretty_generate get_random_art()
  end

  run! if __FILE__ == $0
end

