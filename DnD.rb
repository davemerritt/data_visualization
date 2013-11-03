require 'rubygems'
require 'nokogiri'
require 'open-uri'

File.open('DnD.html', 'w') do |x|
page = Nokogiri::HTML(open("http://www.wizards.com/dnd/Tools.aspx"))
links = page.css("a")
links.each do |y|
	x.write("<div>" + y + "</div>\n")
	end
end
#why on earth doesn't this work.
#gives link names, and not actual links now, when it was in 
#block form, and not writing, gave links.