require_relative './hasher.rb'

module ToyChain
  class Record
    attr_reader :blob

    def initialize(blob:)
      @blob = blob
    end

    def hash_pointer
      ToyChain::Hasher.generate(@blob)
    end
  end
end
