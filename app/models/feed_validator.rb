class FeedValidator < ActiveModel::Validator
	def validate(record)
		unless Nokogiri::XML(record.data).errors.empty?
			record.errors[:base] << "The feed data contains invalid XML."
		end
	end
end