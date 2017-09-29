class User < ActiveRecord::Base
	has_many :problems, dependent: :destroy
end
