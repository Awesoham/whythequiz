FactoryGirl.define do
  x = {
      name: "Example User",
      email: "user@example.com",
      password: "changeme",
      password_confirmation: "changeme"
  }
  sequence :email do |n|
  	"example#{n}@example.me"
  end
  factory :user do
    name 'Test User'
    email
    password 'changeme'
    password_confirmation 'changeme'
  end

  factory :question do
    text "All the lonely people..."
    answer "Where the qu*z do they all come from?"
    user User.new(x)
  end

  factory :quiz do
  	name "And a few more sitters"
  	user User.new(x.merge(email: "noob@example.com"))
  	questions [FactoryGirl.create(:question)]
  end
end #TODO clean this file up (use Ffaker?)