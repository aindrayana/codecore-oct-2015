# the convention in rails is to use pluralize model name if the controller is related
# to that model. For instance, if the model name is QUestion the controller name
# should be QuestionsCOntroller.
# You can generate such controller by running:
# rails g controller questions

## ----- Added this part below on Oct-29 Bootcamp day9
class QuestionsController < ApplicationController
  def new
    # the default behaviour of the controller action is to render a template
    @q = Question.new
  end

  def create
    # Question.create({title: params[:question][:title],
    #                 body: params[:question][:body]})

    # the other way to use line below is what called mass assignment way
    question_params = params.require(:question).permit([:title, :body]) #only allow permitted param, in this case title and body
    # Question.create(question_params)
    @q = Question.new(question_params)
    if @q.save
        # render text: "Saved correctly!"
        redirect_to(question_path(@q))
    else
        # render text: "Didn't save correctly! #{q.errors.full_messages.join(", ")}"
        render :new
    end
    # render text: "Inside Questions create: #{params[:question]}"
  end
  def show
    @q = Question.find(params[:id])
    # render text: params
  end
  def edit
    @q = Question.find(params[:id])
    # render text: "inside update #{params}"
  end
  def update
    @q = Question.find params[:id]
    question_params = params.require(:question).permit([:title, :body])
    if @q.update(question_params)
      redirect_to question_path(@q)
    else
      render :edit
    end
    # render text: "inside update #{params}"
  end
  def index
    @questions = Question.recent_ten
  end

  def destroy
    @q = Question.find params[:id]
    @q.destroy
    redirect_to questions_path
  end
end
