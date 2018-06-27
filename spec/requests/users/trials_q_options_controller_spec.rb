require 'rails_helper'

RSpec.describe Users::TrialsQOptionsController, type: :request do

  describe '#POST :create' do

    # if the saving was success
    context 'if saving the answer was success' do
      let(:trials_q_option) { create(:trials_q_option) }
      let(:q_option) { create(:q_option) }

      context 'if it was the last question' do
        subject(:last_question) { post '/users/q_options/1/trials_q_options' }
        it 'increases the number of TrialsQOption data by 1' do
          expect(last_question).to change(TrialsQOption, :count).by(1)
        end

        it 'updates the trial data oon its ended_at' do
          expect(assgins(trial).ended_at).to_not eq nil
        end

        it 'redirects to the result page' do

        end

      end

      context 'if it wasnt the last question' do
        it 'increases number of TrialsQOption data by 1' do

        end

      end

    end

    # if it failed saving successfully
    context 'if it didnt succeed in saving the answer' do
      it 'redirects to the quizzes show and start again' do

      end

    end

  end


end
