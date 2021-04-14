require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper 
  attr_accessor :student 
  @@all = []

def scrape_index_page
  doc = Nokogiri::HTML(open("https://learn-co-curriculum.github.io/student-scraper-test-page/index.html"))
  
  doc.css(". ")
end

def scrape_profile_page
  
end 


end 