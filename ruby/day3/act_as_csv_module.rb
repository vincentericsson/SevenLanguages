module ActAsCsv
	def self.included(base)
		base.extend ClassMethods
	end
	module ClassMethods
		def acts_as_csv
			include InstanceMethods
		end
	end
	module InstanceMethods
		attr_accessor :headers, :csv_contents
		def read
			@csv_contents = []
			filename = self.class.to_s.downcase + '.csv'
			file = File.new(filename)
			@headers = file.gets.chomp.split(', ')
			file.each {|row| @csv_contents << row.chomp.split(', ')}
		end
		def initialize
			read
		end
		def each
			csv_contents.each {|x| yield CsvRow.new headers, x}
		end
	end
	class CsvRow
		attr_accessor :headers, :data
		def initialize headers, data
			@headers = headers
			@data = data
		end
		def method_missing name, *args, &block
			data[headers.index(name.to_s)]
		end
	end
end

class RubyCsv
	include ActAsCsv
	acts_as_csv
end