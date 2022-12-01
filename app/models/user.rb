class User < ApplicationRecord
	has_one :product
	has_many :subscriptions
end
