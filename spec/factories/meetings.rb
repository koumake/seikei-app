FactoryBot.define do
    factory :meeting do
      content {'あああああああああああ'}
      title {'あああああああああああ'}
      date_time {'ああああ'}
      plece {'あああああああああああ'}
      number {'２人'}
      target_person {'ああああ'}
      user_id {2}
      association :user
      
    end
end