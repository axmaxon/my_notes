class Note < ApplicationRecord
  attr_accessor :line_number

  belongs_to :user

  validates :body, presence: true, length: { maximum: 1000 }
end
