class Users::TrialsController < ApplicationController

  def create
    @users_quizzes = UsersQuiz.where(quiz_id: get_quiz_id)
    @user_quiz  = @users_quizzes.find_by(user_id: get_user_id)

    if @user_quiz = nil then
      redirect_to 
    end

  end


  private
    def get_user_id
      current_user.id
    end

    def get_quiz_id
      params[:quiz_id]
    end

end
