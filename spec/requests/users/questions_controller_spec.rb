require 'rails_helper'

RSpec.describe Users::QuestionsController, type: :request do

    # include ControllerMacros

    let(:user) { create(:user) }

    describe '#GET :index' do

      subject(:game_start) { get '/users/quizzes/1/questions' }

      before do
        # binding.pry
        login_as(user)
        # controller_macros.rb内のlogin_userメソッドを呼び出し
      end
      before { subject }

      context 'if UsersQuiz does not exist' do
        it 'creates new users_quizzes data' do
          expect{game_start}.to change(UsersQuiz, :count).by(1)
        end
      end

      context 'if UsersQuiz does already exist' do
        # do nothing
      end

      it 'creates new trial data' do
        expect(game_start).to change(Trial, :count).by(1)
      end

      it 'chooses the first question in the quiz' do
        expect(assigns(first_question).id).to eq 1 #こんなかんじでidを引っ張ってこれるのか？
      end

      it 'transfers to the first question' do
        expect(response).to redirect_to '/users/quizzes/1/questions/1'
      end

    end



    describe '#GET :show' do

      let(:a_question) { create(:question) }
      let(:q_option) { create_list(:q_option, 4)}

      context 'if user successfully created trial table' do
        subject(:question) { get '/users/quizzes/1/questions/1'}
        before { subject }

        it 'gets a question and puts it into @question' do
          a_question
          expect(assgins(question).id).to eq a_question
        end

        it 'gets 4 q_options and puts them into @q_options' do
          q_option
          expect(assigns(q_options).id).to eq q_option
        end
      end

      context 'if user didnt create trial table' do
        subject(:question) { get '/users/quizzes/1000000/questions/1'}
        before { subject }
        it 'renders index' do
          expect(response).to redirect_to 'users/quizzes/1/questions'
        end
      end

    end



    describe '#POST :create' do
      subject(:save_answer) { post 'urllllllllllllllllllllllllllllllllll'}

      it 'creates trials_q_option successfully' do

      end

      context 'if it was the last question' do

        it 'renders the result page' do

        end

        it 'updates the trial on the ended_at' do

        end

        it 'calculates and updates the trial on score ' do

        end
      end

      context 'if it is not the last question' do
        it 'renders the next question page' do

        end
      end
    end

    describe '#GET :result' do
      subject(:show_result) { get 'urlllllllllllllllllllllllllllllllllllllllll'}

      it 'selects the trials_q_options the user answered this time' do
      end

      it 'selects the questions related to the q_options' do
      end

      it 'selects the score' do
      end

      it 'calculates the whole score average in a country' do
      end

    end
end
    #
    #   it 'assigns the all quizzes into @quizzes' do
    #     quiz = create(:quiz) # createした際、同じデータをquizに入れておく。
    #     expect(assigns(:quizzes)).to eq [quiz]     # @quizzes(=:quizzes)にはいっているもの(assigns(:quizzes))がquiz（1行前に定義。createしたものと同じもの）と一致することを期待
    #   end
    #
    #   # response code matches with 200
    #   it 'matches the response code with 200' do
    #     expect(response.status).to eq 200
    #   end
    #
    #   # indexをrenderすること
    #   it 'renders the index.html after all' do
    #     expect(response).to render_template :index
    #   end
    # end
    #
    #
    # describe '#GET :show' do
    #
    #   subject { get '/user/quizzes/11' }
    #   let!(:each_quiz) { create(:quiz, id: 11)}
    #   before { subject }
    #
    #   # @quizzesにid指定されたquizを入れること
    #   it 'assigns the selected quiz into @quiz' do
    #     expect(assigns(:quiz)).to eq each_quiz
    #   end
    #
    #   # response code is 200
    #   it 'is matching code 200' do
    #     expect(response.status).to eq 200
    #   end
    #
    #   # indexをrenderすること
    #   it 'renders show.html' do
    #     expect(response).to render_template :show
    #   end
    # end
