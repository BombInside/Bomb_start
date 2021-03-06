class User < ActiveRecord::Base
	has_many :posts, dependent: :destroy
	acts_as_authentic do |c|
    	c.crypto_provider = Authlogic::CryptoProviders::Sha512
	end
end
