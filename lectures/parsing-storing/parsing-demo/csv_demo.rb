require 'csv'

filepath    = 'data/beers.csv'

# READING

csv_file_options = {
  col_sep: ',',
  quote_char: '"',
  headers: :first_row
}

CSV.foreach(filepath, csv_file_options) do |row|
  # puts "#{row[0]}, #{row[1]}, #{row[2]}"
  puts "#{row['Name']}, #{row['Appearance']}, #{row['Origin']}"
end

# STORING

csv_file_options = {
  col_sep: ',',
  quote_char: '"',
  force_quotes: true
}

CSV.open(filepath, "wb", csv_file_options) do |csv|
  csv << ["Name", "Appearance", "Origin"]
  csv << ["Brahma", "Light yellow", "Brazil"]
end
