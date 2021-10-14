require 'rails_helper'

RSpec.describe Booth, type: :model do
  before do
    @booth = FactoryBot.build(:booth)
  end
  
  describe 'ブース投稿' do
    context 'ブース投稿できるとき' do
      it 'image, prize_name, machine_name, categoryが存在すれば登録できる' do
        expect(@booth).to be_valid
      end
    end
    context 'ブース投稿できないとき' do
      it 'imageが空では登録できない' do
        @booth.image = nil
        @booth.valid?
        expect(@booth.errors.full_messages).to include ("Image can't be blank")
      end
      it 'prize_nameが空では登録できない' do
        @booth.prize_name = ''
        @booth.valid?
        expect(@booth.errors.full_messages).to include ("Prize name can't be blank")
      end
      it 'machine_nameが空では登録できない' do
        @booth.machine_name = ''
        @booth.valid?
        expect(@booth.errors.full_messages).to include ("Machine name can't be blank")
      end
      it 'categoryが空では登録できない' do
        @booth.category = ''
        @booth.valid?
        expect(@booth.errors.full_messages).to include ("Category can't be blank")
      end
    end
  end
end
