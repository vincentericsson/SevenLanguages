$LOAD_PATH << '.'
require 'act_as_csv_module.rb'

csv = RubyCsv.new
csv.each {|row| puts row.one}