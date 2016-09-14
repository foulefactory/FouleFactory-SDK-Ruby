# This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).

module FouleFactoryApi
  class CsvFilesController < BaseController
    @@instance = CsvFilesController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Create new csv file
    # @param [CsvFileWriterServiceModel] file Required parameter: Example: 
    # @param [String] accept_language Optional parameter: Example: fr
    # @return Mixed response from the API call
    def create_csv_files_create_csv_file(file, 
                                         accept_language = 'fr')
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1.1/csvFiles'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'APIMATIC 2.0',
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8',
        'Accept-Language' => if accept_language.nil? then 'fr' else accept_language end
      }

      # Create the HttpRequest object for the call
      _request = @http_client.post _query_url, headers: _headers, parameters: file.to_json, username: Configuration.basic_auth_user_name, password: Configuration.basic_auth_password
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_request)

      # Wrap the request and response in an HttpContext object
      _context = HttpContext.new(_request, _response)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_context) if @http_call_back

      # Global error handling using HTTP status codes.
      validate_response(_context)

      # Return appropriate response type
      decoded = APIHelper.json_deserialize(_response.raw_body) if not (_response.raw_body.nil? or _response.raw_body.to_s.strip.empty?)
      return decoded
    end

    # Get csv file by id
    # @param [Integer] id Required parameter: Example: 
    # @param [String] accept_language Optional parameter: Example: fr
    # @return Mixed response from the API call
    def get_csv_files_get(id, 
                          accept_language = 'fr')
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1.1/csvFiles/{id}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'id' => id
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'APIMATIC 2.0',
        'accept' => 'application/json',
        'Accept-Language' => if accept_language.nil? then 'fr' else accept_language end
      }

      # Create the HttpRequest object for the call
      _request = @http_client.get _query_url, headers: _headers, username: Configuration.basic_auth_user_name, password: Configuration.basic_auth_password
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_request)

      # Wrap the request and response in an HttpContext object
      _context = HttpContext.new(_request, _response)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_context) if @http_call_back

      # Global error handling using HTTP status codes.
      validate_response(_context)

      # Return appropriate response type
      decoded = APIHelper.json_deserialize(_response.raw_body) if not (_response.raw_body.nil? or _response.raw_body.to_s.strip.empty?)
      return decoded
    end
  end
end
