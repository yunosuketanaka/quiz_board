class Admin::QuizzesController < ApplicationController

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
    binding.pry
    quiz_params
    binding.pry
    Quiz.create(@new_quiz)
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
    redirect_to admin_quizzes_path
    # render :index
  end

  private
    def quiz_params
      @new_quiz = params.require(params[:quiz]).permit(:title, :description)
    end


end
