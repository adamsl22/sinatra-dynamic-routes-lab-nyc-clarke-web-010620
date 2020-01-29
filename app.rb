require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user_name = params[:name]
    @user_name.reverse
  end

  get '/square/:number' do
    @num = params[:number]
    square = @num.to_i * @num.to_i
    square.to_s
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @phrase = params[:phrase]
    array = []
    @num.to_i.times {|x| array << @phrase}
    array.join
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
    if @op == "add"
      result = @num1.to_i + @num2.to_i
    elsif @op == "subtract"
      result = @num1.to_i - @num2.to_i
    elsif @op == "multiply"
      result = @num1.to_i * @num2.to_i
    elsif @op == "divide"
      result = @num1.to_i / @num2.to_i
    end
    result.to_s
  end

end