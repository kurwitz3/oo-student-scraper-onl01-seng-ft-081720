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
    
  end

  def add_student_attributes(attributes_hash)
    
  end

  def self.all
    @@all
    
  end
end

