require 'rubygems'
require 'nokogiri'
require 'open-uri'


page = Nokogiri::HTML(open("http://www.backstreetboys.com/events"))
place = page.css("span[class=venue]")
time = page.css("span[class=time]")


File.open('BsB.html', 'w') do |x|
	x.puts ("<!DOCTYPE html>")
	x.puts ("<html>")
	x.puts ("	<head>")
	x.puts ("		<title>Backstreetboystuff</title>")
	x.puts ("	</head>")
	x.puts ("	<body>")
	x.puts ("")
	x.puts ("		<h1>Places and Times The Backstreetboys are Playing This Year, Somehow.</h1>")
	x.puts ("")

place.each do |y|
		x.write("<p>" + y + "</p>\n")         
	end


	x.puts ("")
	x.puts ("<h3>I have a short attention span, I am so sorry.</h3>")
	x.puts ("<span><p>I'm not that sorry.</p></span>")
	x.puts ("	</body>")
	x.puts ("</html>")

end
#New website! Better website?