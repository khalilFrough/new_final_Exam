module ApplicationHelper

	def time_difference( zone1, zone2)
		(( Time.now.in_time_zone(zone2).utc_offset  - Time.now.in_time_zone(zone1).utc_offset ) / 3600)
	end

end
