class Doubt < ApplicationRecord
  belongs_to :course
  has_many :answers
end
