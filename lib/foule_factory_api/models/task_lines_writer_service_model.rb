# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module FouleFactoryApi
  class TaskLinesWriterServiceModel < BaseModel
    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id_project

    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :task_columns

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["id_project"] = "IdProject"
        @hash["task_columns"] = "TaskColumns"
      end
      @hash
    end

    def initialize(id_project = nil,
                   task_columns = nil)
      @id_project = id_project
      @task_columns = task_columns
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        id_project = hash["IdProject"]
        task_columns = hash["TaskColumns"]

        # Create object from extracted values
        TaskLinesWriterServiceModel.new(id_project,
                                        task_columns)
      end
    end
  end
end
