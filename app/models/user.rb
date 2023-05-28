class User < ApplicationRecord
  # Others available are: :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :notes

  def full_name
    "#{first_name} #{last_name}"
  end
end
