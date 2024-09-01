class Expense < ApplicationRecord
  belongs_to :user

  validates :amount, presence: true
  validates :description, presence: true
end
