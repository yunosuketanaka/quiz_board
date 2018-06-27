class Users::TrialsQOptionsController < ApplicationController

  def create
    # trial_idを取得する
    # q_option_idを取得する
    # TrialsQOptionのデータ新規作成

    # redirect_to
  end


  private
    def get_q_option_id
      params[:q_option_id]
    end

    def get_user_id
      current_user.id
    end

end
