class Client < ApplicationRecord
	scope :activated, -> { where(status: "activated") }
  scope :deactivated, -> { where(status: "deactivated") }
end
