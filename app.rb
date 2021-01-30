require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  # good to use instance variables so that they can be updated in your view as well 
  get '/reversename/:name' do 
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do 
    @num = params[:number]
    x = @num.to_i ** 2
    x.to_s
  end  

  get '/say/:number/:phrase' do 
    @num = params[:number]
    @str = params[:phrase]
    @str * @num.to_i 
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    params[:word1] +  " " + params[:word2] +  " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
  end

  get '/:operation/:number1/:number2' do 
    @num_1 = params[:number1]
    @num_2 = params[:number2]

    if(params[:operation] == "add")
      "#{@num_1.to_i + @num_2.to_i}"
    elsif(params[:operation] == "subtract")
      "#{@num_1.to_i - @num_2.to_i}"
    elsif(params[:operation] == "multiply")
      "#{@num_1.to_i * @num_2.to_i}"
    elsif(params[:operation] == "divide")
      "#{@num_1.to_i / @num_2.to_i}"
    end

  end
  

end