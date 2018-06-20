'rails_helper'

describe User::UsersQuizzesController, type: :request do

  describe '#POST :create' do

    after(:context) do
      #redirects to trial craete

    end

    context 'if users_quizzes does not exist' do
      it 'creates new users_quizzes data' do

      end

      it 'puts in the id into @user_quiz_id' do
      end

    end

    context 'if users_quizzes does exist' do
      # do nothing
      it 'puts in the id into @user_quiz_id' do

      end
    end



  end

end
