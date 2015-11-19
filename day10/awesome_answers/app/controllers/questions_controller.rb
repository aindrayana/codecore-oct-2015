# the convention in rails is to use pluralize model name if the controller is related
# to that model. For instance, if the model name is QUestion the controller name
# should be QuestionsCOntroller.
# You can generate such controller by running:
# rails g controller questions

## ----- Added this part below on Oct-29 Bootcamp day9
class QuestionsController < ApplicationController

## ----- Added on Oct30 - Bootcamp day10
# before action will register a method (in this case it's called find_question)
# that will be executed before all actions unless you specify options suc as:
# :except or :only
# before_action (:find_question, {only: [:show, :edit, :update, :destroy]})
before_action :find_question, only: [:show, :edit, :update, :destroy]
## --------

  def new
    # the default behaviour of the controller action is to render a template
    @q = Question.new
  end

  def create
    # Question.create({title: params[:question][:title],
    #                 body: params[:question][:body]})

    # the other way to use line below is what called mass assignment way
    # question_params = params.require(:question).permit([:title, :body]) #only allow permitted param, in this case title and body
    # question_params is moved - see question_params method below

    # Question.create(question_params)
    @q = Question.new(question_params)
    if @q.save
        # render text: "Saved correctly!"
        redirect_to(question_path(@q), notice: "Question created!") #notice will send flash msg
    else
        # render text: "Didn't save correctly! #{q.errors.full_messages.join(", ")}"
        render :new
    end
    # render text: "Inside Questions create: #{params[:question]}"
  end
  def show
    # @q = Question.find params[:id]
    # render text: params
  end
  def edit
    # @q = Question.find params[:id]
    # render text: "inside update #{params}"
  end
  def update
    # @q = Question.find params[:id]
    # question_params = params.require(:question).permit([:title, :body])
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
    # @q = Question.find params[:id]
    @q.destroy
    flash[:notice] = "Question deleted successfully"
    redirect_to questions_path
  end

  # Added on Oct30 - day10
  def find_question
    # finding the question by its id
    @q = Question.find params[:id] #this code is used in def show, def edit, and def destroy
  end
  def question_params
    # Question.create({title: params[:question][:title],
    #                 body: params[:question][:body]})

    # the other way to use line below is what called mass assignment way
    question_params = params.require(:question).permit([:title, :body]) #only allow permitted param, in this case title and body
  end
end
