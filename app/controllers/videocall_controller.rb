class VideocallController < ApplicationController
  def vidyoconnector
  	@token = generate_token(params[:user_name])
  	@resource_id = params[:resource_id]
  	@display_name = params[:display_name]
  end

  private
  	
  	def generate_token(user_name)
  		token = %x(python3 generateToken.py --key=9b0369ac3cce4a8ca4070b6f27bfdd37 --appID=1be865.vidyo.io --userName=#{user_name} --expiresInSecs=10000 2>&1)
			token = token.split("\n").last
  		return token
  	end
end
