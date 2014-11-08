module FeelsHelper
	def add_checkins
		location = 383
		
		Feel.all.each do |feel|
			(1..rand(5..30)).each do |n|
				Checkin.create(feel_id:feel.id, location_id:location)
			end
		end
		
	end
end
