class Doubt < ApplicationRecord
  belongs_to :course, optional: true
  belongs_to :user, optional: true
  has_many :answers, dependent: :destroy
end
