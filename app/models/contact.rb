class Contact < ActiveRecord::Base
	belongs_to :client

	include OpenSpreadsheet

	def self.import(file)
		spreadsheet = open_spreadsheet(file)
		header = spreadsheet.row(1)
		(3..spreadsheet.last_row).each do |i|
			row = Hash[[header, spreadsheet.row(i)].transpose]
			contact = find_by_id(row["id"]) || new
			contact.attributes = row.to_hash.slice(*Contact.attribute_names())
			contact.client = Client.find_by_name(row["client_id"])
			contact.save!
		end
	end
end
