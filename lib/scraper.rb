require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper 
  attr_accessor :student 
  @@all = []

def scrape_index_page
  doc = Nokogiri::HTML(open("https://learn-co-curriculum.github.io/student-scraper-test-page/index.html"))
  
  doc.css(".post").each do |post|
    student = Student.new 
    student.name = post.css("h2").text.strip
    student.location = post.css(".location").text.strip
    student.profile_url = post.css(".profile_url").text.strip
    
  end
  
end

def scrape_profile_page
  
end 


end 