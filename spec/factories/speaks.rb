FactoryBot.define do
    factory :speak do
       content {'ああああ'}
       association :user
       association :group
    end
end