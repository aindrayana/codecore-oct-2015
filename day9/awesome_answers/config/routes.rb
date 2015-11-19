Rails.application.routes.draw do

  # This maps all GET requests with URL "/hello" to:
  # WelcomeController with Index actions
  get "/hello" => "welcome#hello"

  # the routes files is bassically a set of rules. the routes files isn't aware
  # of controllers' existance
  get "/index" => "welcome#index"
  get "/home" => "welcome#index", as: :hey
  root "welcome#index"

  # when using a symbol-like string within a url, this means that it's a variable
  # part of the url (could be anything)
  get({"greeting/:name" => "welcome#greeting", as: :greeting})
  get "/greeting" => "welcome#greeting", as: :justgreeting

  get "/convert" => "welcome#convert", as: :convert

  ## ----- Added this part below on Oct-29 Bootcamp day9
  # resources :questions
  # check your path at http://localhost:3000/rails/info
  get({"/questions" => "questions#index"})

  get({"/questions/new" => "questions#new", as: :new_question})
  post({"/questions" => "questions#create", as: :questions})
  get({"/questions/:id" => "questions#show", as: :question})

  get({"/questions/:id/edit" => "questions#edit", as: :edit_question})
  patch({"/questions/:id" => "questions#update"})

  delete({"/questions/:id" => "questions#destroy"})

  # ------------
  # get({"/questions/new"      => "questions#new",    as: :new_question})

  # post({"/questions"         => "questions#create", as: :questions })
  # get({"/questions/:id"      => "questions#show",   as: :question})

  # get({"/questions/:id/edit" => "questions#edit",   as: :edit_question})
  # patch({"/questions/:id"    => "questions#update"})

  # get({"/questions"          => "questions#index"})
  # delete({"/questions/:id"   => "questions#destroy"})



end
