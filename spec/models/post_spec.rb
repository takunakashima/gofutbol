require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end

  describe '新規投稿機能' do

    context '新規投稿できるとき' do
      it '画像、月、日、テキストが存在すれば出品できる' do
        expect(@post).to be_valid
      end
    end
  
    context '新規投稿できない時' do
      it '画像が空では投稿できない' do
        @post.image = nil
        @post.valid?
        expect(@post.errors.full_messages).to include("画像を入力してください")
      end

      it '月が「---」だと投稿できない' do
        @post.month_id = '1'
        @post.valid?
        expect(@post.errors.full_messages).to include("月は---以外を入力してください")
      end

      it '日が「---」だと投稿できない' do
        @post.day_id = '1'
        @post.valid?
        expect(@post.errors.full_messages).to include("日は---以外を入力してください")
      end

      it 'テキストが空では出品できない' do
        @post.content = ''
        @post.valid?
        expect(@post.errors.full_messages).to include("テキストを入力してください")
      end

      it 'テキストが1000文字以上だと出品できない' do
        @post.content = 'a' * 1001
        @post.valid?
        expect(@post.errors.full_messages).to include("テキストは1000文字以内で入力してください")
      end


      it 'userが結びついていなければ出品できない' do
        @post.user = nil
        @post.valid?
        expect(@post.errors.full_messages).to include('ユーザーを入力してください')
      end
      
    end
  end
end
