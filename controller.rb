require ('sinatra')
require 'sinatra/contrib/all' if development?
require_relative('./models/students')
require_relative('./models/houses')
also_reload('./models/*')


get '/hogwarts' do
  @students = Student.all
  erb(:index)
end

get '/hogwarts/new' do
  erb(:new)
end

post '/hogwarts' do
  @student = Student.new(params)
  @student.save()
  erb(:create)
end

get '/hogwarts/:id' do
  @student = Student.find(params[:id])
  erb(:show)
end
