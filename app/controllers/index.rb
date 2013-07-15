get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:word' do
  @word = params[:word]
  erb :index
end
