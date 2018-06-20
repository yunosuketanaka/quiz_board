require 'date'

class Users::QuestionsController < ApplicationController

  def index
    @users_quizzes = UsersQuiz.where(quiz_id: get_quiz_id)
    @user_quiz  = @users_quizzes.find_by(user_id: get_user_id)

    if @user_quiz = nil then
      @user_quiz = UsersQuiz.new(user_id: @user_id, quiz_id: @quiz_id)
    end

    @trial = Trial.new(started_at: Time.now, user_quiz_id: @user_quiz)


    @first_question = Question.where(quiz_id: @quiz_id).first
    redirect_to "users/quizzes/#{@quiz_id}/questions/#{@firstequestion}" #pathの指定の仕方、これではダメな気がする

  end

  def show
  end



  private
    def get_user_id
      binding.pry
      current_user.id
    end

    def get_quiz_id
      params[:quiz_id]
    end

    def get_question_id
      @question_id = params[:id]
    end

end
