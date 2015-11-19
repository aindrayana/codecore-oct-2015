class Question < ActiveRecord::Base
  validates(:title, {presence: true,
                    uniqueness: {message: "was already used"},
                    length:    {minimum: 3}})
  validates :body, presence: true,
                  uniqueness: {scope: :title}
                  # using scope: :title will make sure that the body is unique
                  # in combination with the title

  #validate something is numeric
  validates :view_count, numericality: {greater_than_or_equal_to: 0}

  # VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  # validates :email, format: VALID_EMAIL_REGEX

  # custom validation
  validate :no_monkey

  after_initialize :set_default_values
  before_validation :capitalize_title

  # custom method to get the recent 10 record.
  # we called

  def self.recent_ten
    order("created_at DESC").limit(10)
  end
  # scope :recent_ten, lambda { order("created_at DESC").limit(10)}
  # is the same as method above but instead use lambda

  def self.recent(num_records)
    order("created_at DESC").limit(num_records)
  end

  def self.db_search(term)
    if term == ""
      "you must enter a search term!"
    else
      # where(["title ILIKE ? OR body ILIKE ?","%#{term}%", "%#{term}%"])
      where(["title ILIKE :search_term OR body ILIKE :search_term", {search_term: "%#{term}%"}])
    end
  end


  private
  # this is a custom validation method
  def no_monkey
    if title.present? && title.downcase.include?("monkey")
      errors.add(:title, "No monkeys please!")
    end
  end

  def set_default_values
    # set the value to 5 if the value is nill
    self.view_count ||= 5
  end

  def capitalize_title
    self.title.capitalize! if title
  end
end
