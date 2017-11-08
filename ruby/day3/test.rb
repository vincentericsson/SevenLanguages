$LOAD_PATH << '.'
require 'act_as_csv_module.rb'

csv = RubyCsv.new
puts csv.headers.inspect
puts csv.csv_contents.inspect
#csv.each{|x| puts x.inspect}

csv = RubyCsv.new
csv.each {|row| puts row.one}