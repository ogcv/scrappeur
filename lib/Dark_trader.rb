require 'rubygems'
require 'nokogiri'
require 'open-uri'

def Traders
page = Nokogiri::HTML(open("https://coinmarketcap.com/fr/all/views/all/"))   

array = []

crypto_symbol_array = page.css('tbody td.text-left.col-symbol')

all_symbol = crypto_symbol_array.map { |symbol| symbol.text }
 
puts "#{all_symbol}"

price_array = page.css('tbody a.price')

all_price = price_array.map { |price|price.text }

puts "#{all_price}"

x = 5
arr = []
y = 0
while y < x 

result = Hash.new
result[all_symbol[y]] = all_price[y]

arr << result

y += 1

end

 puts arr
end
 













