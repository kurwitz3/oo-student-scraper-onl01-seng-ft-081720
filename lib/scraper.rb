require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  

 # def self.scrape_index_page(index_url)
      #studentz = []
    #html = open(index_url)
    
   # doc =  Nokogiri::HTML(html)
     
     
    #doc.css(".student-card").collect do |x|
      #studentz << {:name => x.css('.student-name').text,
      #:location => x.css('.student-location').text, 
      #:profile_url =>  x.css('a').attr('href').value }
  #end
    def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    student_cards = doc.css(".student-card a")
    student_cards.collect do |element|
      {:name => element.css(".student-name").text ,
        :location => element.css(".student-location").text,
        :profile_url => element.attr('href')
      }
    end
  end


  def self.scrape_profile_page(profile_url)
    
  end

end
projects ={}

  #kickstarter.css("li.project.grid_4").each do |project|
  #title = project.css("h2.bbcard_name strong a").text
  #projects[title.to_sym] =  projects[title.to_sym] = {
      #:image_link => project.css("div.project-thumbnail a img").attribute("src").value,
      #:description => project.css("p.bbcard_blurb").text,
      #:location => project.css("ul.project-meta span.location-name").text,
      #:percent_funded => project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i
   # }
  #end
 
  # return the projects hash
  #projects
#end
#x.css('a').attr('href').value   student url 
#x.css('p').children[0].text      location
#x.css('h4').children[0].text      name 