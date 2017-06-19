class Tweet < ApplicationRecord
	validates :status, length: { maximum: 140, minimum: 1 }
end
