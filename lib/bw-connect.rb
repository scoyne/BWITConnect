require 'httparty'
require 'json'
require 'swagger'

class Connect
    include HTTParty
    include Swagger

    base_uri 'https://prometheus.bw.edu/CherwellAPI/'

    # authorizing a Cherwell connecting token to the BWConnect class by creating a new BWConnect client autherized with a username and password
    def initialize(username, password)
        response = self.class.post(api_url("token"), body: { username: username, password: password })
        @client_id = response["client_id"] # used to obtain authorization token require to make the API request to Cherwell
        raise "Hey Buddy, invalid username or password!" if response.code == 400
    end

    # creating endpoint url for a DRY code experience
    def api_url(endpoint)
        "https://prometheus.bw.edu/CherwellAPI/api/v1/#{endpoint}"
    end
end