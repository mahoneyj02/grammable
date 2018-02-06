FactoryBot.define do
  factory :comment do
    
  end
    factory :user do
        sequence :email do |n|
            "dummyEmail#{n}@gmail.com"
        end
        password "secretPassword"
        password_confirmation "secretPassword"
    end
    
    factory :gram do
        picture { fixture_file_upload(Rails.root.join('spec', 'fixtures', 'picture.png').to_s, 'image/png') }
        message "Hello!"
        association :user
    end
end