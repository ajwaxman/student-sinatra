require 'sinatra/base'
require './student.rb'

# Why is it a good idea to wrap our App class in a module?
module StudentSite
  class App < Sinatra::Base
    get '/' do
      "hello jack!"
    end

    get '/hello' do 
      erb :hello
    end

    get '/students' do 
      @students = Student.all
      erb :'students/index'
    end

    get '/students/:id' do 
      @student = Student.find(params[:id])
      erb :'students/template'
    end
  end
end