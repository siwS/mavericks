require 'csv'
require 'pry'

file = "output_benevolent.csv"
output_file = "new_output_benevolent.csv"

results = []
rows = CSV.read(file, liberal_parsing: true)
rows.each_with_index do |row, index|
  puts index
  result = row[0].split(":")
  results << result[1]
end


puts results
CSV.open(output_file, 'w') do |csv_object|
  results.each do |row_array|
    puts row_array
    csv_object << [row_array]
  end
end


