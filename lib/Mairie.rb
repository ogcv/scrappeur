require 'rubygems'
require 'nokogiri'
require 'open-uri'


page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/95/avernes.html")) 

def get_townhall_email_name
page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/95/avernes.html")) 
	email1 = page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]')

	name1 = page.xpath("/html/body/div/main/section[1]/div/div/div/h1")


	arr = []
	
	result = Hash.new
	
	result[name1.text] = email1.text
	
	arr << result

puts arr
end

get_townhall_email_name

def get_twonhall_urls
page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/val-d-oise.html"))
	 array = []
	villes_array = page.css('table.Style20 a @href')
	cities = villes_array.map { |pages| pages.text[1..-1]  }
	puts"#{cities}"
	
	cities.each do |email|
		return "#{email}"
	end
end
get_twonhall_urls

#tentatives de boucles pour associer les deux def:(.each, .times, while) rien de fonctionne !
#page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com#{cities[0]}"))

