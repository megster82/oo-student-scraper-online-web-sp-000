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
    student = Student.new 
    student.name = post.css("h4.student-name").text
    student.location = post.css("p.student-location").text
    student.profile_url = post.css("h3.view-profile-text").text
    }
  end
  students 
end

def scrape_profile_page
  
end 


end 