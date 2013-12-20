class Client < ActiveRecord::Base
	Types = ["医院","药店","社区","新农合"]
	Grade = ["一级","二级","三级","私立","药店","诊所","社区","乡镇卫生院","村镇卫生所"]
	Terminal = ["第一终端","第二终端","第三终端","第四终端"]

	has_many :contacts

	include OpenSpreadsheet

	def self.import(file)
		spreadsheet = open_spreadsheet(file)
		header = spreadsheet.row(1)
		(2..spreadsheet.last_row).each do |i|
			row = Hash[[header, spreadsheet.row(i)].transpose]
			product = find_by_id(row["id"]) || new
			product.attributes = row.to_hash.slice(*Client.attribute_names())
			product.save!
		end
	end
	
end
