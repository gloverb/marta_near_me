class Location < ActiveRecord::Base

	geocoded_by :my_location
	after_validation :geocode

	#Here, behind the scenes, we will combine the address and city given to use by the User, while also adding the state (because we're only operation in Georgia here) and Geocdoe that!

	def my_location
		"#{address}, #{city}, GA"
	end

end
