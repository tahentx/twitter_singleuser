class Tweet < ApplicationRecord
	attr_accessor :status
	validates :status, length: { maximum: 140, minimum: 1 }
end
