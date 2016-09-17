# Cat class
class Cat
  # @@ is a class variable but should be avoided
  @@cats_count = 0

  def initialize(name)
    @name = name
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

# kitty = Cat.new("Mr.Kitty");
