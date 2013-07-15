get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:word' do
  @word = Word.find_by_word(params[:word])
  erb :index
end
