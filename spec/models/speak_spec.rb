require 'rails_helper'

RSpec.describe Speak, type: :model do
  describe '#create' do
    before do
      @speak = FactoryBot.build(:speak)
    end

    it "contentが存在すれば登録できる" do
      expect(@speak).to be_valid
    end

    it "contentが空だと登録できない" do
      @speak.content = nil
      @speak.valid?
      expect(@speak.errors.full_messages).to include("Content can't be blank")
    end
  end
end
