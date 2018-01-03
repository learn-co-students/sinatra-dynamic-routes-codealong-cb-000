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

  # Code your final two routes here:

  get '/goodbye/:name' do
    resp = Rack::Response.new
    resp.status = 200
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get '/multiply/:num1/:num2' do
    resp = Rack::Response.new
    resp.status = 200
    @num_a = params[:num1]
    @num_b = params[:num2]
    @answer = @num_a * @num_b
    "#{@answer}"
    binding.pry
  end

end
