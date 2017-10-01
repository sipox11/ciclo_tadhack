class VideocallController < ApplicationController
  def vidyoconnector
  	@token = generate_token(params[:user_name])
  	@resource_id = params[:resource_id]
  	@display_name = params[:display_name]
  	@phone_number_recipient = "<Enter the phone number here>"
  	message = "Click here to open the app: https://ciclo.com/videocall?display_name=JoseAndroid&resource_id=ciclo_room"
  	send_sms(@phone_number_recipient, message)
  end

  private
  	
  	def generate_token(user_name)
  		%x(python3 generateToken.py --key=<vidyo_developer_key> --appID=<vidyo_app_id> --userName=#{user_name} --expiresInSecs=10000 2>&1)
			token = token.split("\n").last
  	end

  	def send_sms(phone_number, text)
  		# username is SID Account
  		# password is Auth token
  		# Using basic authentication
  		auth = {:username => "apifonica_sid_acount", :password => "apifonica_auth_token"}
  		url = "https://api.apifonica.com/v2/accounts/<apifonica_sid_account>/messages"
  		query = { from: "<Registered Phone Number>", to: phone_number, "text": text }
  		HTTParty.post(url, query: query, basic_auth: auth)
  	end
end
