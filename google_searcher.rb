require 'launchy'

def test_empty
	abort("no research") if ARGV.empty?
end

def make_research
	#add a + after each ARGV
	url = ARGV * "+"

	#add the research in the url of google
	research = "https://www.google.com/search?q=#{url}"
	puts research

	#make the research
	Launchy.open("#{research}")


end 

test_empty
make_research