# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module FouleFactoryApi
  class PayinServiceModel < BaseModel
    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :return_url

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["amount"] = "Amount"
        @hash["return_url"] = "ReturnUrl"
      end
      @hash
    end

    def initialize(amount = nil,
                   return_url = nil)
      @amount = amount
      @return_url = return_url
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        amount = hash["Amount"]
        return_url = hash["ReturnUrl"]

        # Create object from extracted values
        PayinServiceModel.new(amount,
                              return_url)
      end
    end
  end
end
