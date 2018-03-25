require 'sinatra'
require_relative 'subtraction.rb'
require_relative 'division.rb'
require_relative 'multiplication.rb'
require_relative 'addition.rb'
enable :sessions

get '/' do
	erb :methods
end

post '/calc' do
	num1 = params[:num1]
	num2 = params[:num2]
	session[:button] = params[:button]
	if session[:button] == "+"
		session[:results] = addition(num1.to_i,num2.to_i)
	elsif session[:button] == "-"
		session[:results] = subtraction(num1.to_i,num2.to_i)
	elsif session[:button] == "*"
		session[:results] = multiplication(num1.to_i,num2.to_i)
	elsif session[:button] == "/"
		session[:results] = division(num1.to_i,num2.to_i)
	end
	redirect "/results?=" + "&num1=" + num1 + "&num2=" + num2
end

get "/results" do
	num1 = params[:num1]
	num2 = params[:num2]
	erb :results, locals:{num1:num1, num2:num2, results:session[:results].to_s, method_type:session[:button]}
end