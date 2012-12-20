FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}   
    password "joy&peace"
    password_confirmation "joy&peace"

    factory :admin do
      admin true
    end
  end

   factory :micropost do
      content 'lorem ipsum'
      user
  end
end 
