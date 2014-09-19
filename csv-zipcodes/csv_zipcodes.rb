# Given a CSV file containing a list of usernames, zipcodes, and email-addresses 
# (in that order, separated by commas), generate a list of zipcodes and 
# how many users are in them


require 'CSV'
 
def generate_user_count

	zipcodes = []
	zipcodes_and_count = {}

	CSV.foreach("info.csv") do |row|
	    zipcodes << row[1]
	end

	zipcodes.uniq.each do |zip|
	  zipcodes_and_count[zip] = zipcodes.count(zip)
	end

	return zipcodes_and_count

end

p generate_user_count