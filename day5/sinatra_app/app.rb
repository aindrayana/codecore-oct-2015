require "sinatra"
require "sinatra/reloader"
require "faker"

enable :sessions

# when we receive a GET request with a url "/"
# we send back a text response that says "Hello World"
# get "/" do
#   "<h1>Hello world</h1>"
# end

get "/" do
  # by calling the erb method with an argument. SInatra will look
  # in that folder located within the same folder as this file (app.rb)
  # and it will render a file name: index.rb (this called a convention)
  # erb method will render the index.erb template and generate HTML code
  # from it. THe HTML code will
  erb(:index, {layout: :app_layout})
  # this tell sinatra to render index within/ using app_layout
  # use layout if you want to have a layout on every page
  # {layout: :app_layout} is hash with the key and the value are both symbols
  # which are layout: and :app_layout
end

get "/phrase" do
  @phrase = Faker::Company.catch_phrase
  erb :phrase, layout: :app_layout
end

get "/hello" do
  @name = "Tam"
  # Sinatra sends whatever the block (do block) returns as a response (last line)
  erb :hello, layout: :app_layout
end

get "/contact" do
  erb :contact, layout: :app_layout
end

post "/contact_submit" do
  # "Thank you #{params[:full_name]}! <br>
  # we will response to your email #{params[:email]} soon"
  @params = params
  erb :thankyou, layout: :app_layout
end

get "/temperature" do
  erb :temperature, layout: :app_layout
end

post "/temperature" do
  @temp_c = params["temperature"].to_f
  @temp_f = ((9 * @temp_c)/5) + 32
  session[:last_temp] = @temp_c
  erb :temperature, layout: :app_layout
end

# the verb / url must be unique
get "/hi" do
  "Hi there!"
end

get "/color_pick" do
  erb :color_pick, layout: :app_layout
end

post "/color_pick" do
  @mycolor = params["color_menu"]
  session[:mycolor] = @mycolor
  erb :color_pick, layout: :app_layout
end

# get "/convert" do
#  erb :convert, layout: :app_layout
# end
