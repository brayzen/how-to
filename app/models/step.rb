class Step < ActiveRecord::Base
  belongs_to :tutorial
  validates :name, presence: true
end
