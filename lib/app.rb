require "sinatra/base"
require "./models/peep"
require "./models/data_mapper_setup"

data_mapper_configure

class Chitter < Sinatra::Base

  get '/' do
    redirect '/peeps'
  end

  get '/peeps' do
    @peeps = Peep.all
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end