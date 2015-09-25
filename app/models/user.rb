class User < ActiveRecord::Base
  has_many :interests, dependent: :destroy
  validates_presence_of :name

def self.males
    where(gender: 'male')
  end

  def self.females
    where(gender: 'female')
  end

  def self.between_ages(min_age, max_age)
    where("age > ? AND age < ?", min_age, max_age)
  #  this is how to call this method: Person.all.males.between_ages(18, 28)
  end
  


end
