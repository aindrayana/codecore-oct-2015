FactoryGirl.define do
  factory :user do
    # sequence will force the factory to re-execute within the block everytime it run or use the factory to create an object
    sequence(:first_name) {Faker::Name.first_name}
    sequence(:last_name) {Faker::Name.last_name}

    # |n| gives you a number that increments everytime you use the factory. this is useful to ensure that email are unique
    sequence(:email) {|n| "#{n}.#{Faker::Internet.email}" }

    # password in this case will be the same for all the record using the factory (within a loaded environment)
    password Faker::Internet.password

    # to run factory go to rails console
    # FactoryGirl.build(:user) to test without save it to db, and 'FactoryGirl.create(:user)' to save it to db
  end

end
