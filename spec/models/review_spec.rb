require 'rails_helper'

RSpec.describe Review, type: :model do
  describe '#create' do
    before do
      @review = FactoryBot.build(:review)
      
    end

    it "title,treatment_site,date,clinic,docter,price,contentが存在すれば登録できること" do
      expect(@review).to be_valid
    end

    it "titleが空では登録できないこと" do
      @review.title = nil
      @review.valid?
      expect(@review.errors.full_messages).to include("Title can't be blank")
    end

    it "treatment_siteが空では登録できないこと" do
      @review.treatment_site = nil
      @review.valid?
      expect(@review.errors.full_messages).to include("Treatment site can't be blank")
    end

    it "dateが空では登録できないこと" do
      @review.date = nil
      @review.valid?
      expect(@review.errors.full_messages).to include("Date can't be blank")
    end

    it "clinicが空では登録できないこと" do
      @review.clinic = nil
      @review.valid?
      expect(@review.errors.full_messages).to include("Clinic can't be blank")
    end

    it "docterが空では登録できないこと" do
      @review.docter = nil
      @review.valid?
      expect(@review.errors.full_messages).to include("Docter can't be blank")
    end

    it "priceが空では登録できないこと" do
      @review.price = nil
      @review.valid?
      expect(@review.errors.full_messages).to include("Price can't be blank")
    end

    it "contentが空では登録できないこと" do
      @review.content = nil
      @review.valid?
      expect(@review.errors.full_messages).to include("Content can't be blank")
    end


    
  end
end
