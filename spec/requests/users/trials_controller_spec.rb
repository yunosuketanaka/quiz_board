'rails_helper'

describe Users::TrialsController, type: :request do

  describe '#POST :create' do
    context 'if users_quizzes does not exist' do
      subject(:trial) { post '/users/trials' }
      let!(:sample_trial) { create(:trial, users_quiz_id: 10) }

      it 'redirect to users_quizzes :create' do
        subject
        expect(response).to redirect_to 'users/users_quizzes'
      end

    end

    context 'if users_quizzes already does exist' do
      subject(:create_trial) { post '/users/trials' }
      let!(:sample_trial) { create(:trial) }

      it 'creates the new trial data' do
        expect{:create_trial}.to change(Trial, :count).by(1)
      end

      it 'redirects to questions show' do
        expect{:create_trial}.to redirect_to 'users/question/user/quizzes/1/questions/1'
      end

    end


  end
end
