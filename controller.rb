require ('sinatra')
require 'sinatra/contrib/all' if development?
require_relative('./models/students')
require_relative('./models/houses')
also_reload('./models/*')

get '/hogwarts' do
  erb(:home)
end

get '/hogwarts/all' do
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

post '/hogwarts/:id/delete' do
  @student = Student.find(params[:id])
  @student.delete()
  redirect to '/hogwarts/all'
end

get '/hogwarts/:id' do
  @student = Student.find(params[:id])
  erb(:show)
end

get '/hogwarts/:id/edit' do
  @houses = House.all
  @student = Student.find(params[:id])
  erb(:edit)
end

post '/hogwarts/:id' do
  @student = Student.new(params)
  @student.update()
  erb(:update)
end
