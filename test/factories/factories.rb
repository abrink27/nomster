FactoryGirl.define do
  factory :comment do
    message "omg this placegefgvd"
    rating "4_stars"
    association :user
    association :place
  end

  factory :user do
  	sequence :email do |n|
  		"heythere#{n}@gmail.com"
  	end
    password "sdfdiuhyguihbydd"
    password_confirmation "sdfdiuhyguihbydd"
  end

  factory :place do
  association :user
  sequence :name do |x|
  	"Fake Restaurant#{x}"
  end
      address "123 Fake Street"
      description "Fake food, fake friends."
  end

end
