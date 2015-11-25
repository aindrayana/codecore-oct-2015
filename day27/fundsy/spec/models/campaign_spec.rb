require 'rails_helper'

RSpec.describe Campaign, type: :model do

  # def valid_attributes(new_attributes = {})
  #   {
  #     title: Faker::Company.bs,
  #     goal: Faker::Commerce.price,
  #     description: Faker::Lorem.sentence,
  #     end_date: Faker::Date.forward(23)
  #   }.merge(new_attributes)
  # end


  describe "validations" do
    it "require a title" do
      # campaign = Campaign.new(valid_attributes(title: nil))
      campaign = Campaign.new
      campaign.valid?
      expect(campaign.errors.messages).to have_key(:title)
    end
    it "require a goal" do
      campaign = Campaign.new
      campaign.valid?
      expect(campaign.errors.messages).to have_key(:goal)
    end

    it "goal should be more than 10" do
      campaign = Campaign.new(goal: 5)
      campaign.valid?
      expect(campaign.errors.messages).to have_key(:goal)
    end

  end

end
