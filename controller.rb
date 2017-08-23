require ('sinatra')
require 'sinatra/contrib/all' if development?
require_relative('./models/students')
also_reload('./models/*')

get '/hogwarts' do
  @students = Student.all
  erb(:index)
end

get '/hogwarts/:id' do
  @student = Student.find(params[:id])
  erb(:show)
end
