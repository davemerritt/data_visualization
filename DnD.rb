require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("http://www.wizards.com/dnd/Tools.aspx"))
links = page.css("a[class=ContentBoxLink]")
links.each { |link| puts link['href']}
#Hey, it does stuff! 
#Neat!