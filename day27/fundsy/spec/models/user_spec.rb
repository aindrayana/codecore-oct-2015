require 'rails_helper'


RSpec.describe User, type: :model do

  # to test specific spec line:
  # rspec spec/models/user_spec.rb:53

  def valid_attributes(new_attributes = {})
    {
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      password: Faker::Internet.password
    }.merge(new_attributes)
  end

  # describe can be used to define a group of test examples together
  describe "validations" do

    # we use "it" method to define a test example
    it "requires an email" do
      # Given:  a new user record
      # When:   we try to validate it
      # Then:   it's invalid

      # short format of rspec:
      # # Given:
      # user = User.new
      # # When:
      # outcome = user.valid?
      # # Then:
      # expect(outcome).to eq(false)

      user = User.new(valid_attributes(email: nil))   # it makes a valid attributes and replace any value in email to empty value
      # we use the "expect" method by RSpec to test the outcome of the test
      # .to be_invalid is rspec matcher
      expect(user).to be_invalid
    end

    it "requires a first name" do
      u = User.new(valid_attributes(first_name: nil))
      # u.email = something@valid.com
      expect(u).to be_invalid
    end

    #other technique without using valid_attributes
    it "requires a last name" do
      u = User.new
      u.valid?
      # have_key is an RSpec matcher that uses has_key? method in the Ruby
      expect(u.errors.messages).to have_key(:last_name)
    end

    # to test specific spec line:
    # rspec spec/models/user_spec.rb:53
    it "requires an email with a proper format" do
      user = User.new(valid_attributes(email: "test"))
      expect(user).to be_invalid
    end

  end

  describe "generating password digest" do
    it "generates a password_digest upon saving" do
      # GIVEN
      u = User.new valid_attributes
      # WHEN
      u.save
      # THEN
      expect(u.password_digest).to be
    end
  end

  describe ".full_name" do
    it "returns the first name and last name concatenated" do
      attributes = valid_attributes
      u = User.new attributes
      expect(u.full_name).to eq("#{attributes[:first_name]} #{attributes[:last_name]}")
    end
  end

end
