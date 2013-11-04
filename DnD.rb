require 'rubygems'
require 'nokogiri'
require 'open-uri'


page = Nokogiri::HTML(open("http://www.wizards.com/dnd/Tools.aspx"))
links = page.css("a")

File.open('DnD.html', 'w') do |x|
	x.puts ("<html>")
	x.puts ("<head>")
	x.puts ("<title>DnD Links</title>")
	x.puts ("</head>")
	x.puts ("<body>")
	x.puts ("<h1>Tools, Magazines, and other Information for DnD</h1>")
	x.puts ("")

links.each do |href|
		x.write("<div>" + href + "</div>\n")        
	end

	x.puts ("</body>")
	x.puts ("</html>")

end
#I want it to put all the html formatting in, and just end up with a 
#straightforward list of links to the information.
#Working on making it looks right, then I'll figure out why the links aren't links. 