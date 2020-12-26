require 'rails_helper'
describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    it '全ての項目の入力が存在すれば登録できること' do
      expect(@user).to be_valid
    end
    
    it 'nicknameが空だと登録できないこと' do
      @user.nickname = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end

    it 'emailが空だと登録できないこと' do
      @user.email = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end

    it 'passwordが空だと登録できないこと' do
      @user.password = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end
    
    it 'profileが空だと登録できないこと' do
      @user.profile = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Profile can't be blank")
    end
    
    it 'emailに@が含まれていないとユーザー登録できない' do
      @user.email = 'aaaa'
      @user.valid?
      expect(@user.errors.full_messages).to include('Email is invalid')
    end
    
    it '重複したemailが存在する場合登録できないこと' do
      @user.save
      another_user = FactoryBot.build(:user)
      another_user.email = @user.email
      another_user.valid?
      expect(another_user.errors.full_messages).to include('Email has already been taken')
    end

    it 'passwordが6文字以下だと登録できないこと' do
      @user.password = '111aa'
      @user.valid?
      expect(@user.errors.full_messages).to include('Password is too short')
    end

    it 'passwordは半角英数字でなければ登録できないこと' do
      @user.password = '１１１ａａａ'
      @user.valid?
      expect(@user.errors.full_messages).to include('Password is invalid')
    end

    it 'passwordが半角英字のみだとユーザー登録できない' do
      @user.password = 'aaaaaa'
      @user.valid?
      expect(@user.errors.full_messages).to include('Password is invalid')
    end

    it 'passwordとpassword_confirmationが不一致では登録できないこと' do
      @user.password = '123aaa'
      @user.password_confirmation = '1234aaa'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
  end
end
