class Tutorial < ActiveRecord::Base
  has_many :steps
  validates :title, presence: true, length: { minimum: 5 }
end
