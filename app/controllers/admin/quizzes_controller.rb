class Admin::QuizzesController < ApplicationController

  def index
    @quizzes = Quiz.all
  end

  def show
    @quiz = Quiz.find(params[:id])
  end

  def edit
    @quiz = Quiz.find(params[:id])
    # @question = Question.find(params[:quiz_id])
    @questions = @quiz.questions
    binding.pry
  end

end
