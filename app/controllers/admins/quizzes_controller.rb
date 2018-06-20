
class Admins::QuizzesController < ApplicationController

  def index
    @quizzes = Quiz.all
  end

  def show
    @quiz = Quiz.find(params[:id])
  end

  def new
    @quiz = Quiz.new
  end

  def create
    # Quiz.create(@new_quiz)
    @new_quiz = Quiz.new(quiz_params)

    if @new_quiz.save

      redirect_to 'admins/quizzes/questions/new'

    else
      render :new
    end
  end

  def edit
    @quiz = Quiz.find(params[:id])
    # @question = Question.find(paramsj:quiz_id])
    # binding.pry
    @questions = @quiz.questions
  end

  def destroy
    @quiz = Quiz.find(params[:id])
    @quiz.destroy
    redirect_to admins_quizzes_path

    # render :index
  end

  private
    def quiz_params
      # binding.pry
      params.require(:quiz).permit(:title, :description)
    end
end
