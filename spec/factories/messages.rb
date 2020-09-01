FactoryBot.define do
    factory :message do
      content {'あああああああ'}
      association :user
      association :room
    end
  end