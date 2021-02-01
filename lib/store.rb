class Store < ActiveRecord::Base
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: { greater_than: 0 }
  validate :carries_mens_or_womens_clothing
  def carries_mens_or_womens_clothing
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "Must carry at least one kind of apparel")
    end
  end
  has_many :employees
end
