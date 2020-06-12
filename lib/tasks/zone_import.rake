desc "import timezone"
task import_timezone: :environment do
	zone_data = JSON.parse(File.read('zone.json'))
	zone_data.each do |zone|
		# puts zone["value"]
		City.create(
				value: zone["value"],
				abbr: zone["abbr"],
				offset: zone["offset"],
				isdst: zone["isdst"],
				text: zone["text"],
				utc: zone["utc"]
		)
	end
end
