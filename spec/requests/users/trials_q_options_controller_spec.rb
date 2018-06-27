require 'rails_helper'

RSpec.describe Users::TrialsQOptionsController, type: :request do

  describe '#POST :create' do

    # if the saving was success
    context 'if saving the answer was success' do


      context 'if it was the last question' do
        it 'increases number of TrialsQOption data by 1' do

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
