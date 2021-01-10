require 'rails_helper'
describe MoreInformation, type: :model do
  before do
    @more_information = FactoryBot.build(:more_information)
  end

  describe '個別飼育情報' do
    it '全ての項目の入力が存在すれば投稿できること' do
      expect(@more_information).to be_valid
    end

    it 'numberが空だと登録できないこと' do
      @more_information.number = nil
      @more_information.valid?
      expect(@more_information.errors.full_messages).to include("Number can't be blank")
    end

    it 'sizeが空白でも登録できること' do
      @more_information.size = nil
      expect(@more_information).to be_valid
    end

    it 'sex_idが1でも登録できること' do
      @more_information.size = 1
      expect(@more_information).to be_valid
    end

    it 'birthdayが空白でも登録できること' do
      @more_information.birthday = nil
      expect(@more_information).to be_valid
    end

    it 'メモが空白でも登録できること' do
      @more_information.memos = nil
      expect(@more_information).to be_valid
    end

    it 'informationが紐付いていないと保存できないこと' do
      @more_information.information = nil
      @more_information.valid?
      expect(@more_information.errors.full_messages).to include('Information must exist')
    end
  end
end