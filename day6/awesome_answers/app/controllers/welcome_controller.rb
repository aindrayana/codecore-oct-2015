class WelcomeController < ApplicationController
  # we call a method defined within the controller: action
  def hello
    # render text: "Hello World"
    # or: render({text: "Hello World"})

    # this line is implied by convention, we don't have to put the line below
    # render :hello, layout: "application"

    # hello.html.erb
    # hello: actions name
    # .html: response format (default to html)
    # .erb

    # if we get a request to: /hello.text
    # rails will render: views/welcome/hello.text.erb

  end

  def index

  end

  def greeting
    # @name = "Aji"
    @name = params[:name]
  end

#   def convert
#     @temp_c = params["convert"].to_f
#     @temp_f = ((9 * @temp_c)/5) + 32
# #    session[:last_temp] = @temp_c
#   end
end
