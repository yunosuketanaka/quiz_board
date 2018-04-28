class User::QuizzesController < ApplicationController

  def index
    @quizzes = Quiz.all
  end

  def show
  end


end
