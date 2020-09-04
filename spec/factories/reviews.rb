FactoryBot.define do
    factory :review do
       title {'ああああ'}
       treatment_site {'ああああ'}
       date {'ああああ'}
       clinic {'ああああ'}
       docter {'あああああ'}
       price {'ああああ'}
       content {'あああああ'}
       user_id {2}
       association :user
    end
end