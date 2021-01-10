require 'rails_helper'
describe Information, type: :model do
  before do
    @information = FactoryBot.build(:information)
  end
  
  describe '幼虫飼育情報' do
    it '全ての項目の入力が存在すれば投稿できること' do
      expect(@information).to be_valid
    end

    it 'breednameが空だと登録できないこと' do
      @information.breedname = nil
      @information.valid?
      expect(@information.errors.full_messages).to include("Breedname can't be blank")
    end

    it 'localityが空だと登録できないこと' do
      @information.locality = nil
      @information.valid?
      expect(@information.errors.full_messages).to include("Locality can't be blank")
    end

    it 'generation_idが空だと登録できないこと' do
      @information.generation_id = nil
      @information.valid?
      expect(@information.errors.full_messages).to include("Generation can't be blank")
    end

    it 'food_idが空だと登録できないこと' do
      @information.food_id = nil
      @information.valid?
      expect(@information.errors.full_messages).to include("Food can't be blank")
    end

    it 'generation_idが１だと登録できないこと' do
      @information.generation_id = 1
      @information.valid?
      expect(@information.errors.full_messages).to include("Generation must be other than 1")
    end

    it 'food_idが１だと登録できないこと' do
      @information.food_id = 1
      @information.valid?
      expect(@information.errors.full_messages).to include("Food must be other than 1")
    end

    it 'memoが空白でも登録できること' do
      @information.memo = nil
      expect(@information).to be_valid
    end

    it 'breedが紐付いていないと保存できないこと' do
      @information.breed = nil
      @information.valid?
      expect(@information.errors.full_messages).to include('Breed must exist')
    end
  

  end
end
