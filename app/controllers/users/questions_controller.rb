require 'date'

class Users::QuestionsController < ApplicationController

  def index
    @users_quizzes = UsersQuiz.where(quiz_id: get_quiz_id)
    @user_quiz  = @users_quizzes.find_by(user_id: get_user_id)

    if @user_quiz = nil then
      @user_quiz = UsersQuiz.new(user_id: @user_id, quiz_id: get_quiz_id)
    end

    @trial = Trial.new(started_at: Time.now, user_quiz_id: @user_quiz)


    @first_question = Question.where(quiz_id: get_quiz_id).first
    redirect_to "users/quizzes/#{get_quiz_id}/questions/#{@first_question}" #pathの指定の仕方、これではダメな気がする

  end

  def show
    @users_quizzes = UsersQuiz.where(quiz_id: get_quiz_id)
    @user_quiz  = @users_quizzes.find_by(user_id: get_user_id)
    if @user_quiz = nil then
      redirect_to "users/quizzes/questions"
      return
    end
    @user_quiz_id = @user_quiz.id
    @trial = Trial.find(user_quiz_id: @user_quiz_id)
    if @trial = nil then
      redirect_to "users/quizzes/questions"
      return
    end

    # ここにquestionを引っ張ってくる

    # ここにq_optionを引っ張ってくる

  end

  def create
    @next = Question.where(quiz_id: get_quiz_id, and )
  end


  private
    def get_user_id
      # binding.pry
      current_user.id
    end

    def get_quiz_id
      params[:quiz_id]
    end

    def get_question_id
      @question_id = params[:id]
    end

end
