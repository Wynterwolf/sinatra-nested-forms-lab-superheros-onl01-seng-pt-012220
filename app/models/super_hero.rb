class Superhero
  
  attr_reader :name, :power, :RUBY_VERSION
  @@all = []
  
  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    self.save
  end
  
  def save
    self.class.all << self
  end
  
  def self.all
    @@all
  end
end