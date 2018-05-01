require 'rails_helper'

RSpec.describe Admin::QuizzesController, type: :request do


    describe '#GET :index' do

      subject(:quizzes) { get '/admin/quizzes' } # :quizzesという名前のついた、httpリクエスト + url。 subject(:quizzes)とするたびに　get '/user/quizzes' がurlとして呼ばれる。
      before { subject } # 全部のexampleの前でsubjectをしてください、という意味。つまり、全てのexampleのまえで get '/user/quizzes'を呼び出してくださいという指示。 subjectであることの有用性を生かしていない気がしている。

      # @quizzesにquizを全て入れること
      it 'assigns the all quizzes into @quizzes' do
        quiz = create(:quiz) # createした際、同じデータをquizに入れておく。
        expect(assigns(:quizzes)).to eq [quiz]     # @quizzes(=:quizzes)にはいっているもの(assigns(:quizzes))がquiz（1行前に定義。createしたものと同じもの）と一致することを期待
      end

      # response code matches with 200
      it 'matches the response code with 200' do
        expect(response.status).to eq 200
      end

      # indexをrenderすること
      it 'renders the index.html after all' do
        expect(response).to render_template :index
      end
    end


    describe '#GET :show' do

      subject { get '/admin/quizzes/11' }
      let!(:each_quiz) { create(:quiz, id: 11)}
      before { subject }

      # @quizzesにid指定されたquizを入れること
      it 'assigns the selected quiz into @quiz' do
        expect(assigns(:quiz)).to eq each_quiz
      end

      # response code is 200
      it 'is matching code 200' do
        expect(response.status).to eq 200
      end

      # indexをrenderすること
      it 'renders show.html' do
        expect(response).to render_template :show
      end
    end


    describe '#GET :edit' do

      subject { get '/admin/quizzes/11/edit' }
      let!(:each_quiz) { create(:quiz, id: quiz_id) }
      let(:quiz_id) { 11 }
      before { subject }

      # @quiz にid:11のquizがはいっていることを確認する
      it 'assigns the selected quiz into @quiz' do
        expect(assigns(:quiz)).to eq each_quiz
      end

      # response code is 200
      it 'is matching code 200' do
        expect(response.status).to eq 200
      end

      # editをrenderすること
      it 'renders edit.html' do
        expect(response).to render_template :edit
      end

      # 紐づいたquestionsもひっぱってくる→クリック可能に
      it 'assgins the questions in the selected quiz' do
        questions = create(:question, quiz_id: quiz_id)
        expect(assigns(questions)).to eq questions
      end
    end
end
