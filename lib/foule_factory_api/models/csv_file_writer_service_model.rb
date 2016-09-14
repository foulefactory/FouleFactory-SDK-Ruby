# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module FouleFactoryApi
  class CsvFileWriterServiceModel < BaseModel
    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id_project

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :file

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :header

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :separator

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["id_project"] = "IdProject"
        @hash["file"] = "File"
        @hash["header"] = "Header"
        @hash["separator"] = "Separator"
      end
      @hash
    end

    def initialize(id_project = nil,
                   file = nil,
                   header = nil,
                   separator = nil)
      @id_project = id_project
      @file = file
      @header = header
      @separator = separator
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        id_project = hash["IdProject"]
        file = hash["File"]
        header = hash["Header"]
        separator = hash["Separator"]

        # Create object from extracted values
        CsvFileWriterServiceModel.new(id_project,
                                      file,
                                      header,
                                      separator)
      end
    end
  end
end
