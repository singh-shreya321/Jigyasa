class Answer < ApplicationRecord
  belongs_to :doubt, optional: true
  belongs_to :user, optional: true
end
