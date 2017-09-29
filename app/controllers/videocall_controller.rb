class VideocallController < ApplicationController
  def vidyoconnector
  	@token = generate_token
  end

  private
  	def generate_token
  		return "cHJvdmlzaW9uAGNpY2xvdXNlckAxYmU4NjUudmlkeW8uaW8ANjM2NzM5NDgzOTQAADYzMDdkNmU2NjNiOGZkZTIzNzA4ODA0NWI2YmFmZDM3ODNhYjIyYmY5ZmE4YjBiN2FkZTdlNTVkMjIwM2Y4NWIyNzk2MTcwYzc0ZjllOTIyZDgwYmNjYWM0M2YzZWY2MA=="
  	end
end
