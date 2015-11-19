Rails.application.routes.draw do
  get "/index" => "questions#index"
  root "questions#index"

  get "/questions/:id", to: "questions#show", as: :show
  get "/questions/:id/edit", to: "questions#edit", as: :edit
  delete "/questions/:id", to: "questions#destroy", as: :destroy

  post "/questions/:id/comments", to: "comments#create", as: :create
  get "/faq", to: "home#faq", as: :faq

  # delete_path    delete   /questions/:id            questions#destroy
  # edit_path      GET      /questions/:id/edit       questions#edit
  # show_path      GET      /questions/:id            questions#show
  # create_path    post     /questions/:id/comments   comments#create
  # faq_path       GET      /faq                      home#faq

  # GET /patients/17
  # it asks the router to match it to a controller action. If the first matching route is:
  # get '/patients/:id', to: 'patients#show'

  
end
