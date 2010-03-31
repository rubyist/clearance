require 'bcrypt'

module Clearance
  module Encryptors
    class Bcrypt
      def self.salt(string='')
        ::BCrypt::Engine.generate_salt
      end

      def self.digest(string, salt)
        ::BCrypt::Engine.hash_secret(string, salt)
      end
    end
  end
end
