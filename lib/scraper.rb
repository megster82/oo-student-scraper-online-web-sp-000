require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper 
  attr_accessor :student 
  @@all = []

def scrape_index_page(index_url)
  html = open(index_url)
  doc = Nokogiri::HTML(open("https://learn-co-curriculum.github.io/student-scraper-test-page/index.html"))
  
  students = []
  
  doc.css("div.student-card").each do |student|
    students << {
    :name => student.css("h4.student-name").text
    :location = student.css("p.student-location").text
    :profile_url = student.children[1].attributes["href"].value 
    }
  end
  students 
end

def scrape_profile_page
  
end 


end 