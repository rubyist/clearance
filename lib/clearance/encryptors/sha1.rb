require 'digest/sha1'

module Clearance
  module Encryptors
    class SHA1
      def self.salt(string)
        digest(string)
      end
      
      def self.digest(string)
        Digest::SHA1.hexdigest(string)
      end
    end
  end
end
