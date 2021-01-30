class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand #only need a reader since ititialize method has logic for creating the class constant

  BRANDS = [] #defining BRANDS as an empty array sinse plural and need to store multiple

  def initialize(brand)
    @brand = brand #keeps track of all brands
    BRANDS << brand unless BRANDS.include?(brand) # only keeps track of unique brands
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end