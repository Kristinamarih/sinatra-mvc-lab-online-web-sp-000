require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    erb :user_input
  end
  
  post '/piglatinize' do
    words = PigLatinizer.new
    @piglatin = words.piglatinize(params[:user_phrase])
    erb :results
  end
end