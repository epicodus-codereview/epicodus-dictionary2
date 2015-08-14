require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/words')
require('./lib/definitions')

get('/') do
  erb(:index)
end

get('/word_list/new') do
  erb(:word_list_form)
end

get('/word_list') do
  @words = Word.all()
  erb(:word_list)
end
