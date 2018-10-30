require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get '/square/:number' do
    @square_number = params[:number].to_i * params[:number].to_i
    "#{@square_number}"
  end

  get '/say/:number/:phrase' do
    @words = []
    params[:number].to_i.times do
      @words << params[:phrase]
    end
    "#{@words}"
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      @words = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
      "#{@words}"
    end

    get '/:operation/:number1/:number2' do
      @op = params[:operation]
      @num1 = params[:number1].to_i
      @num2 = params[:number2].to_i
      case @op
      when "add"
        "#{@num1+@num2}"
      when "subtract"
        "#{@num1-@num2}"
      when "divide"
        "#{@num1/@num2}"
      when "multiply"
        "#{@num1*@num2}"
      else
        "Wtf meng"
      end
    end

end
