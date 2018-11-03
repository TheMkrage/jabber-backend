class Session < ApplicationRecord
  has_many :user_errors, dependent: :destroy
end
