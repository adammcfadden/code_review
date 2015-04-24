require 'sinatra'
require 'sinatra/reloader'
require './lib/word_counter'
also_reload './lib/**/*'

get ('/') do
  erb(:index)
end

get ('/counter') do
  @search_word = params.fetch('search_word')
  @sentence = params.fetch('sentence')
  @number_of_occurences = params.fetch('search_word').word_counter(params.fetch('sentence'))
  erb(:counter)
end
