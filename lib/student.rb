class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def initialize(hash)
    self.send("name=",hash[:name])
    self.send("location=",hash[:location])
    self.send("profile_url=",hash[:profile_url])
    @@all << self
  end

  def self.create_from_collection(students_array)
     students_array.each do |hash| 
      Student.new(hash)
  end
end
  def add_student_attributes(attributes_hash)
    
  def add_student_attributes(attributes_hash)
    binding.pry 
    self.send("twitter=", attributes_hash[:twitter])
    self.send("linkedin=", attributes_hash[:linkedin])
    self.send("github=", attributes_hash[:github])
    self.send("blog=", attributes_hash[:blog])
    self.send("profile_quote=", attributes_hash[:profile_quote])
    self.send("bio=", attributes_hash[:bio])
    binding.pry 
    
  end

  def self.all
    @@all
    
  end
end

