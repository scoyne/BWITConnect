# require 'httparty'
# require 'json'
# require 'swagger'

class Connect
#    include HTTParty

#    base_uri 'https://prometheus.bw.edu/CherwellAPI/'

    # authorizing a Cherwell connecting token to the BWConnect class by creating a new BWConnect client autherized with a username and password
    # client_id: 1b5881d5-be8a-40fe-9f9a-b2a469093569, username: CSDAPI, password: Cherwell4life
    # def initialize(grant_type, client_id, username, password)
    def greet()
        p "Hi here I am"
        
#        response = self.class.post 'http://prometheus.bw.edu/CherwellAPI/token?auth_mode=Windows&api_key=1b5881d5-be8a-40fe-9f9a-b2a469093569', body: { grant_type: grant_type, client_id: client_id, username: username, password: password })
#        @client_id = response["client_id"] # used to obtain authorization token require to make the API request to Cherwell
#        @access_token = response["access_token"] # Used to obtain auth token required to make API requests
        
#        p "Access Token: #{@access_token}"

        # Include Authorization header with this call to `post`
#        tickets_response = self.class.post(self.api_url('tickets'))

#        raise "Hey Buddy, invalid username or password!" if response.code == 400
    end

    # creating endpoint url for a DRY code experience
#    def api_url(endpoint)
#        "https://prometheus.bw.edu/CherwellAPI/api/v1/#{endpoint}"
#    end

    # def get_tickets
    #     self.class.post self.api_url('tickets')
    # end
end

# Something, somewhere must have this code:
# grant_type = config.your_api.grant_type
# c = Connect.new(grant_type, client_id, username, password)
# c.get_tickets()


# # Your Sweet App
# # tickets_controller.rb#index
# Ticket.all
# Connect.get_tickets

# # models/ticket.rb
# Connect.get_tickets