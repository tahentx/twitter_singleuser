class Tweet < ApplicationRecord
	before_create :create_uuid
	validates :status, length: { maximum: 140, minimum: 1 }
	private
	def create_uuid
	    begin
	      self.uuid = SecureRandom.uuid
	    end while self.class.exists?(:uuid => uuid)
    end
end
