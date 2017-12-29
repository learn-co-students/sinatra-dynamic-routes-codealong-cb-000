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

  get '/goodbye/:name' do
    @user_name = params[:name]
    "Goodbye, #{user_name}."
    status 200
  end

  get '/multiply/:num1/:num2' do
    status 200
    return params[:num1] * params[:num1]
  end
end
