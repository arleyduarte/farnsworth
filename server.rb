#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra/base'
require 'json'
require 'erb'
require 'lib/accounts/accounts'
require 'lib/transfers/transfers'
#require 'ruby-debug'
#require 'server'

class Moby < Sinatra::Base
  use Accounts::Profile
  use Transfers::InternalTransfers  
  set :environment, :production
  set :public, File.dirname(__FILE__) + '/resources'
  set :views, File.dirname(__FILE__) + '/views'
  
  # Valid Access Token
  ACCESS_TOKEN = '581b50dca15a9d41eb280d5cbd52c7da4fb564621247848171508dd9d0dfa551a2efe9d06e110e62335abf13b6446a5c49e4bf6007cd90518fbbb0d1535b4dbc'
  
  # Valid Password
  VALID_PASSWORD = '123'
  
  # Token State (In order to simulate token expiration)
  tokenActive = true
  
   configure do
      set :logging, true
      set :dump_errors, true
    end
   
   #OAuth adhoc methods
   
   post '/oauth/authorize' do
     authorization_code = params[:code]
     puts params.to_s
     response = ""
     if "1234" == authorization_code
       response = {'access_token' => ACCESS_TOKEN, 'timeout' => 31337 }.to_json
     else
       response = {'error' => 'invalid_grant', 'error_description' => 'authorization code not valid'}.to_json
     end
       content_type 'application/json'
       response
   end
   
   # User password validation
   
    post '/users/authenticate' do
      access_token = request.env["HTTP_AUTHORIZATION"]
      password = params[:password]

      tokenHeader = 'OAuth2 ' + ACCESS_TOKEN
      response = ''
      if access_token.nil?
        response = { 'OAuth Exception' => {'error_code' => '201', 'description' => 'An access token is required to access to this resource'}}.to_json
      elsif tokenHeader == access_token and tokenActive
        if password == VALID_PASSWORD
          response = '
{
 "status":{
     "success": true
  }, 
  "profile": {
        "firstName":"Daniel",
        "lastName":"Aguilar",
        "profilePicture":"/static/me.jpg",
        "lastConn" : {
                "connDt":"2012-05-23T15:08:31+0000",
                "channel":"appMobile"                 
             }
        }
}'
        else
          response = '{
 "status":{
     "success": false,
     "code":"invalid_access",
     "description":"username or password is incorrect"
    }
 }'
         end
      else
        status 401
        response = {'message' => "Bad credentials"}.to_json
      end
        content_type 'application/json'
        response      
    end
    
    # Device Registration and Access Token activation
    
    put '/devices/:deviceid/activate' do
      access_token = request.env["HTTP_AUTHORIZATION"]
      puts access_token
      tokenHeader = 'OAuth2 ' + ACCESS_TOKEN
      response = ''
      if access_token.nil?
        response = { 'OAuth Exception' => {'error_code' => '201', 'description' => 'An access token is required to access to this resource'}}.to_json
      elsif tokenHeader == access_token
        response = {'status' => {'success' => true}}.to_json
      else
        response = {'status' => {'success' => false, "code" => "activation_failed", "description" => "Oops. There was a problem activating the device. The access_token has been revoked."}}.to_json
      end
        content_type 'application/json'
        puts response
		response      
    end
   
   # Login adhoc methods
   
   post '/devices/register' do
     clientId = params[:clientId]
     clientSecret = params[:clientSecret]
     username = params[:username]
     password = params[:password]
     deviceId = params[:deviceId]
     deviceName = params[:deviceName]
     response = ''
          
     if username == 'daguilar' && password == VALID_PASSWORD
       response = '
{ 
    "status": {
        "success": true
        },
    "profile": {
        "firstName":"Daniel",
        "lastName":"Aguilar",
        "profilePicture":"/static/me.jpg",
        "lastConn" : {
                "connDt":"2012-05-23T15:08:31+0000",
                "channel":"appMobile"                 
             }
        }
 }'
	elsif username == 'firstlogin'
      	response = '{
 "status":{
     "success": false,
     "code":"first_login",
     "description":"User required must do first login on web site"
    }
 }'
	elsif username == 'lockeduser'
      	response = '{
 "status":{
     "success": false,
     "code":"locked_user",
     "description":"User account is locked"
    }
 }'
 	elsif username == 'inactiveuser'
 		response = '
{
 "status":{
     "success": false,
     "code":"inactive_user",
     "description":"User is disabled"
    }
 }'
 	else
       response = {'status' => {'success'=> false , 'code' => 'invalid_access', 'description' => 'Invalid username or password'}}.to_json
      end
      content_type 'application/json'
      response
   end
   
   # Revoke device resource
   
	delete '/devices/:deviceid/revoke' do
		access_token = request.env["HTTP_AUTHORIZATION"]
      	puts access_token
      	tokenHeader = 'OAuth2 ' + ACCESS_TOKEN
      	response = ''
      	if access_token.nil?
        	response = { 'OAuth Exception' => {'error_code' => '201', 'description' => 'An access token is required to access to this resource'}}.to_json
      	elsif tokenHeader == access_token
        	response = {'status' => {'success' => true}}.to_json
      	else
        	response = '
				{
					"status": 
					{
						"success": false, 
						"code": "revoke_failed",
						"description": "There was a problem revoking the device. The access_token is still a valid token"
					}
				}'
      	end
        content_type 'application/json'
        puts response
		response 
	end
	
#report a version and jailbrokened device

	post '/devices/report' do	
		
		shortResponse = '{
  						"status": {
      						"success": true
  						},
  						"device": {
      						"clientApp": {
          						"blacklist" : false
      						}
  						}
					}'
					
		featureResponse = '{
    "status": {
        "success": true
    },
    "device": {
        "clientApp": {
            "blacklist": false
        },
        "config": {
            "features": [
                {
                    "feature_name": "transactions",
                    "enable": true,
                    "features": [
                        {
                            "feature_name": "transactions_maps",
                            "enable": false
                        },
                        {
                            "feature_name": "transactions_graphic",
                            "enable": false
                        }
                    ]
                },
                {
                    "feature_name": "transfers_internal",
                    "enable": true,
                    "features": [
                        {
                            "feature_name": "token",
                            "enable": true
                        }
                    ]
                },
                {
                    "feature_name": "transfers_external",
                    "enable": true
                },
                {
                    "feature_name": "payments",
                    "enable": true,
                    "features": [
                        {
                            "feature_name": "refill_cellphone",
                            "enable": true
                        },
                        {
                            "feature_name": "basic_payment",
                            "enable": true
                        }
                    ]
                },
                {
                    "feature_name": "change_password",
                    "enable": true
                }
            ]
        }
    }
}'			
					
		content_type 'application/json'
		#shortResponse
		featureResponse
	end	
  
  
  # Change password of user bank
    
  put '/users/password' do
    
    password = params[:oldPassword]
    response = ''
    
#    if password == VALID_PASSWORD
		response = '{
  						"status": {
      						"success": true
  						}

					}'
          
#   else
        	failedResponse = '{
					"status": 
					{
						"success": false, 
						"code": "change_password_failed",
						"description": "There was a problem changing the password"
					}
				}'

#     	end
                  
      content_type 'application/json'
      response
      #failedResponse
  end  
     
   # View to display the state of the access_token and require a change of it state.
   
   get '/token' do
      tokenActive = !tokenActive
      if(tokenActive)
        @tokenState = "active"
      else
        @tokenState = "expired"
      end
     erb  :token
   end
   
   #fetching auth code for email
   post '/auth/code' do
   		successResponse = '{
"status":{    
    "success": true
    }
 }'
 		failureResponse = '{
 "status":{
    "success": false,
    "code":"authcode_failed",
    "description":"authorization code could not be generated"
    }
 }'
 		content_type 'application/json'
		successResponse
   end
   
     
#Moby.run!
        
end
