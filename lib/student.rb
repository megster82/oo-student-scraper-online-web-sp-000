class Student

  attr_accessor :name, :location

  @@all = []

  def initialize(hash)
    @name = hash[:name]
    @location = hash[:location]
    hash = self 
    @@all << self 
  end
    
  def self.create_from_collection
    
  end

  def add_student_attributes
    
  end

  def self.all
    @@all 
  end
  
end

