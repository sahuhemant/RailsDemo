class Example < ApplicationRecord
	enum :status, [:activated, :deactivated]
	validates :name, presence: true
  validates :email, presence: true
end
