class Product < ActiveRecord::Base
	include OpenSpreadsheet

	def self.import(file)
		spreadsheet = open_spreadsheet(file)
		header = spreadsheet.row(1)
		(2..spreadsheet.last_row).each do |i|
			row = Hash[[header, spreadsheet.row(i)].transpose]
			product = find_by_id(row["id"]) || new
			product.attributes = row.to_hash.slice(*Product.attribute_names())
			product.save!
		end
	end

	def self.export
		CSV.generate do |csv|
      		csv << column_names
      		all.each do |product|
        		csv << product.attributes.values_at(*column_names)
      		end
    	end
	end

end
