require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # GET /goodbye/:name
  # sends a 200 status code
  # displays 'goodbye' and a name
  # is not hard-coded
  get '/goodbye/:name' do
    @name = params[:name]
    "Goodbye, #{@name}."
  end

  # GET /multiply/:num1/:num2
  # sends a 200 status code
  # displays the product of the two numbers in the route
  # is not hard-coded
  get "/multiply/:num1/:num2" do
    @product = params[:num1].to_i * params[:num2].to_i
    "#{@product}"
  end

end
