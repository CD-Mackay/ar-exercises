class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {greater_than_or_equal_to: 40, less_than_or_equal_to: 200}

  after_create do
    self.password = (0...50).map { ('a'..'z').to_a[rand(26)] }.join
  end

 
end
