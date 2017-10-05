stock_dict = {  'GM' => 'General Motors',
				'CAT' => 'Caterpillar', 
				'EK' => "Eastman Kodak",
				'GE' => "General Electric"
		}

purchases = [   [ 'GE', 100, '10-sep-2001', 48 ],
 				[ 'CAT', 100, '1-apr-1999', 24 ],
 				[ 'GE', 200, '20-jul-1998', 56 ],
 				[ 'GM', 150, '1-jul-1998', 22 ],
 				[ 'CAT', 175, '1-apr-1998', 46 ],
 				[ 'EK', 300, '3-feb-1998', 55 ],

 		]
  
########### REPORT 1 ###########

puts "Stock Report 1 (Transaction Price):"

 for block in purchases
 	
 	stock_dict.each do |key, val|
 		if block[0] == key
 			block.push(val)
 		end
 	end

 	abbrev = block[0]
 	full_name = block[4]
 	total_price = block[1]*block[3]
 	date = block[2].upcase
 	print date, "- ", abbrev, ": ", full_name, "- $#{total_price}", "\n"
 end

########### REPORT 2 ###########

 puts "\n"
 puts "Stock Report 2 (Total Investment):"

new_stock_hash = Hash.new

stock_dict.each do |key, val|
	new_stock_hash[key] = []
end

for block in purchases
	new_stock_hash.each do |key, val|
		if block[0] == key
			val.push(block)
		end
	end
end

new_stock_hash.each do |key, val|
	for block in val
		total_investment = block[1]*block[3]
		total_investment += total_investment
	end
	print key, ": $#{total_investment}.00\n"
end

