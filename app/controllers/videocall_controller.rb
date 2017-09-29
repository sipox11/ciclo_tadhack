class VideocallController < ApplicationController
  def vidyoconnector
  	@token = generate_token(params[:user_name])
  	@resource_id = params[:resource_id]
  	@display_name = params[:display_name]
  	@phone_number_recipient = ""
  	message = "La videoconferencia esta preparada. Haz click aqui para unirte. https://uneteya.com"
  	send_sms(@phone_number_recipient, message)
  end

  private
  	
  	def generate_token(user_name)
  		token = %x(python3 generateToken.py --key=9b0369ac3cce4a8ca4070b6f27bfdd37 --appID=1be865.vidyo.io --userName=#{user_name} --expiresInSecs=10000 2>&1)
			token = token.split("\n").last
  		return token
  	end

  	def send_sms(phone_number, text)
  		# username is SID Account
  		# password is Auth token
  		# Using basic authentication
  		auth = {:username => "acc3f1aabc1-5743-35f4-be50-73f95e9efe90", :password => "aut57dca9f5-00c4-34ba-b06c-eb290469beed"}
  		url = "https://api.apifonica.com/v2/accounts/acc3f1aabc1-5743-35f4-be50-73f95e9efe90/messages"
  		query = { from: "34668692548", to: phone_number, "text": text }
  		HTTParty.post(url, query: query, basic_auth: auth)
  	end
end
