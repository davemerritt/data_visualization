require 'rubygems'
require 'nokogiri'
require 'open-uri'

File.open('DnD.txt', 'w') do |x|
page = Nokogiri::HTML(open("http://www.wizards.com/dnd/Tools.aspx"))
links = page.css("a[class=ContentBoxLink]")
links.each do |link|
	x.write("<div>" + link + "</div>\n")
	end
end

#Hey, it does stuff! 
#Neat!
#Changes, now it makes the file, but not a useful file that I, or anyone, wants.