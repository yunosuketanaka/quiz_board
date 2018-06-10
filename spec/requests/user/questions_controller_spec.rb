require 'rails_helper'

RSpec.describe User::QuestionsController, type: :request do


    describe '#GET :index' do

      subject(:game_start) { get '/user/quiz/:quiz_id/questions' } # :quizzesという名前のついた、httpリクエスト + url。 subject(:quizzes)とするたびに　get '/user/quizzes' がurlとして呼ばれる。
      before { subject } # 全部のexampleの前でsubjectをしてください、という意味。つまり、全てのexampleのまえで get '/user/quizzes'を呼び出してくださいという指示。 subjectであることの有用性を生かしていない気がしている。

      it 'creates new users_quizzes data if not exist' do
      end

      it 'creates new trial data' do
      end

      it 'transfers to the first question' do

      end

    end

    describe '#GET :show' do
      subject(:each_question) { get '/user/quiz/:quiz_id/question/:id'}
      before { subject }

      it 'gets a question and puts it into @question' do

      end

      it 'gets 4 q_options and puts them into @q_options' do

      end

      it 'renders the view page' do

      end

    end

    describe '#POST :create' do
      subject(:save_answer) { post 'urllllllllllllllllllllllllllllllllll'}

      it 'creates users_q_option successfully' do

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



      it 'selects the users_q_options the user answered this time' do
      end

      it 'selects the questions related to the q_options' do
      end

      it 'selects the score' do
      end

      it 'calculates the whole score average'
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

end
