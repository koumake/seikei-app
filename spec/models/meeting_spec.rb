require 'rails_helper'

RSpec.describe Meeting, type: :model do
  describe '#create' do
    before do
      @meeting = FactoryBot.build(:meeting)
    end

    it "title,date_time,plece,number,target_person,contentがあれば登録ができること" do
      expect(@meeting).to be_valid
    end

    it "titleが空だと登録できないこと" do
      @meeting.title = nil
      @meeting.valid?
      expect(@meeting.errors.full_messages).to include("Title can't be blank")
    end

    it "date_timeが空だと登録できないこと" do
      @meeting.date_time = nil
      @meeting.valid?
      expect(@meeting.errors.full_messages).to include("Date time can't be blank")
    end

    it "pleceが空だと登録できないこと" do
      @meeting.plece = nil
      @meeting.valid?
      expect(@meeting.errors.full_messages).to include("Plece can't be blank")
    end

    it "numberが空だと登録できないこと" do
      @meeting.number = nil
      @meeting.valid?
      expect(@meeting.errors.full_messages).to include("Number can't be blank")
    end

    it "target_personが空だと登録できないこと" do
      @meeting.target_person = nil
      @meeting.valid?
      expect(@meeting.errors.full_messages).to include("Target person can't be blank")
    end

    it "contentが空だと登録できないこと" do
      @meeting.content = nil
      @meeting.valid?
      expect(@meeting.errors.full_messages).to include("Content can't be blank")
    end
  end
end
