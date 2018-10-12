require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @square = (@num * @num).to_s
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]

    output = ""
    @num.times do
      output += @phrase
    end
    output
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @answer = ""

    if @op = "add"
      @answer = (@num1 + @num2)
    end
    if @op = "subtract"
      @answer = (@num1 - @num2)
    end
    if @op = "multiply"
      @answer = (@num1 * @num2)
    end
    if @op = "divide"
      @answer = (@num1 / @num2)
    end

    @answer.to_s
  end

end
