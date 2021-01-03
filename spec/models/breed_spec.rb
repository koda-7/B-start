require 'rails_helper'
describe Breed, type: :model do
  before do
    @breed = FactoryBot.build(:breed)
  end

  describe '繁殖の投稿内容' do
    it '全ての項目の入力が存在すれば投稿できること' do
      expect(@breed).to be_valid
    end

    it 'titleが空だと登録できないこと' do
      @breed.title = nil
      @breed.valid?
      expect(@breed.errors.full_messages).to include("Title can't be blank")
    end

    it 'category_idが空だと登録できないこと' do
      @breed.category_id = nil
      @breed.valid?
      expect(@breed.errors.full_messages).to include("Category can't be blank")
    end

    it 'type_nameが空だと登録できないこと' do
      @breed.type_name = nil
      @breed.valid?
      expect(@breed.errors.full_messages).to include("Type name can't be blank")
    end

    it 'dateが空だと登録できないこと' do
      @breed.date = nil
      @breed.valid?
      expect(@breed.errors.full_messages).to include("Date can't be blank")
    end

    it 'resultが空だと登録できないこと' do
      @breed.result = nil
      @breed.valid?
      expect(@breed.errors.full_messages).to include("Result can't be blank")
    end

    it 'noteが空だと登録できないこと' do
      @breed.note = nil
      @breed.valid?
      expect(@breed.errors.full_messages).to include("Note can't be blank")
    end

    it 'imageが空だと登録できないこと' do
      @breed.image = nil
      @breed.valid?
      expect(@breed.errors.full_messages).to include("Image can't be blank")
    end

    it 'userが紐付いていないと保存できないこと' do
      @breed.user = nil
      @breed.valid?
      expect(@breed.errors.full_messages).to include('User must exist')
    end

    it 'category_idが１だと登録できないこと' do
      @breed.category_id = 1
      @breed.valid?
      expect(@breed.errors.full_messages).to include("Category must be other than 1")
    end
  end
end