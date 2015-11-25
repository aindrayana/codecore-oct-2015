FactoryGirl.define do
  factory :campaign do
    #associate wil create a user object for the campaign and associate it with the created
    #object unless you explicitly pass a ":user" attribute when creating the campaign
    #one-to-many association campaign and user
    association :user, factory: :user

    sequence(:title) { Faker::Company.bs }
    sequence(:goal) { 11 + rand(1000000)}
    description Faker::Lorem.paragraph
    end_date 60.days.from_now
  end

  # 2.2-head :002 > FactoryGirl.create(:campaign)
  #    (0.2ms)  BEGIN
  #   SQL (13.4ms)  INSERT INTO "campaigns" ("title", "goal", "description", "end_date", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5, $6) RETURNING "id"  [["title", "transition proactive bandwidth"], ["goal", 89009], ["description", "Rem quo error sint. Velit optio quaerat non labore quod. Est fuga dolor et vitae facere. Mollitia et iste dolore nihil suscipit."], ["end_date", "2016-01-24 19:03:59.060588"], ["created_at", "2015-11-25 19:05:52.034740"], ["updated_at", "2015-11-25 19:05:52.034740"]]
  #    (10.9ms)  COMMIT
  # +----+----------------------------+-------+---------------------------+-------------------------+-------------------------+-------------------------+
  # | id | title                      | goal  | description               | end_date                | created_at              | updated_at              |
  # +----+----------------------------+-------+---------------------------+-------------------------+-------------------------+-------------------------+
  # | 1  | transition proactive ba... | 89009 | Rem quo error sint. Ve... | 2016-01-24 19:03:59 UTC | 2015-11-25 19:05:52 UTC | 2015-11-25 19:05:52 UTC |
  # +----+----------------------------+-------+---------------------------+-------------------------+-------------------------+-------------------------+
  # 1 row in set

end
