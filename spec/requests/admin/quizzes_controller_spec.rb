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
      let(:question) { create(:question, quiz_id: quiz_id) }
      # before { subject }

      # @quiz にid:11のquizがはいっていることを確認する
      it 'assigns the selected quiz into @quiz' do
        subject
        expect(assigns(:quiz)).to eq each_quiz
      end

      # response code is 200
      it 'is matching code 200' do
        subject
        expect(response.status).to eq 200
      end

      # editをrenderすること
      it 'renders edit.html' do
        subject
        expect(response).to render_template :edit
      end

      # 紐づいたquestionsもひっぱってくる→クリック可能に
      it 'assgins the questions in the selected quiz' do
        # questions = create(:question, quiz_id: quiz_id)
        question
        subject
        expect(assigns(:questions)).to eq [question]
      end
    end

    describe '#DESTROY :delete' do

      let(:quiz) { create(:quiz, id: 11 ) }
      subject(:deleting) { delete '/admin/quizzes/11' }

      # deletes the data
      it 'deletes the data successfully' do
        quiz
        # binding.pry
        expect { deleting }.to change(Quiz, :count).by(-1)
        # binding.pry
      end

      # redirects to the :index
      it 'redirects to the :index page' do
        quiz
        subject
        expect(response).to redirect_to '/admin/quizzes'
      end
    end


    describe '#GET :new' do
      let(:quiz) { build(:quiz) }
      subject { get '/admin/quizzes/new' }

      # renders form_new
      it 'puts quiz data into quiz' do
        quiz
        subject
        expect(quiz).to eq quiz
      end

      #リクエストが成功する
      it 'succeeds request' do
        subject
        expect(response.status).to eq 200
      end
    end

    describe '#POST create' do
      subject(:creating) { post '/admin/quizzes', params: set_quiz }
      # @quiz1 = { quiz2: attributes_for(:quiz) }


      context 'if @quiz is saved successfully' do
            let(:set_quiz) { {quiz: attributes_for(:quiz)} } # 外側はlet付属の{}で、内側はquiz => 〜〜であるという、ハッシュ形式の記述方法
        # @params = attributes_for(:quiz)
        # リクエスト成功
        it 'succeeds in requesting' do
          # binding.pry
          # set_quiz
          subject
          expect(response.status).to eq 201
        end
        # 保存がうまくいく
        it 'succeeds in saving' do
          # quiz1
          # set_quiz
          expect{creating}.to change(Quiz, :count).by(+1)
        end
        # renderで問題新規作成画面に飛ばす
        it 'renders the next questions creating page' do
          # set_quiz
          # quiz1
          subject
          expect(response).to redirect_to 'admin/quizzes/questions/new'
        end
      end

      context 'if @quiz is not saved correctly' do
        let(:set_quiz) { {quiz: attributes_for(:quiz, title: nil)} }
        # @quizは保存されない
        it 'doesnt save the data' do
          subject
          binding.pry
          expect{response}.to raise_error
        end

        # newをもういちどrenderする
        it 'renders new' do
          subject
          expect(response).to render_template :new
        end

      end
    end
end
