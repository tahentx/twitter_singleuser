class User < ApplicationRecord
	has_many :tweets, dependent: :destroy

	protected

	def self.create_user(auth_hash)
		User.create(
		username: auth_hash.info.nickname,
		token: auth_hash.credentials.token,
		secret: auth_hash.credentials.secret
		)
	end
end
