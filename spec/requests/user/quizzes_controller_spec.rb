require 'rails_helper'

RSpec.describe User::QuizzesController, type: :request do
    describe '#GET' do
      # @quizzesにquizを全て入れること
      subject { get "/user/quizzes" }
      it 'assigns the all quizzes into @quizzes' do
        quiz = create(:quiz)
        # quiz = Quiz.new(hoge: hoge)とおなじ
        # Quiz.new(hoge: hoge)
        binding.pry
        # expect(response).to eq quizzes
        # subjectを定義する
        # subject
        # expect(response.status).to eq 200
        # subjectをすることで@quizzessにはいっているものが[quiz]を一致することを期待
        expect(subject).to assigns(:quizzess).to([quiz])
        # gem 'rails-controller-testing' いれる
      end

      # indexをrenderすること
    end

    describe '#GET' do
      # @quizzesにquizを全て入れること
      # indexをrenderすること
    end

    describe '#GET' do
      # @quizzesにquizを全て入れること
      # indexをrenderすること
    end

    describe '#' do
      # @quizzesにquizを全て入れること
      # indexをrenderすること
    end


end
