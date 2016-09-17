# Dumb linter wants a comment
class Bar
  # we have to define this method on `self` (see below comment)
  def self.attribute_reader(attribute)
    define_method attribute do
      self.instance_variable_get("@#{attribute}")
    end
  end

  def self.attribute_writer(attribute)
    define_method "#{attribute}=".to_sym do |value|
      self.instance_variable_set("@#{attribute}", value)
    end
  end

  def self.attribute_accessor(attribute)
    attribute_reader attribute
    attribute_writer attribute
  end

  # these methods are executed within the definition of the Bar class
  # these are class methods 
  attribute_reader :foo
  attribute_writer :bar
  attribute_accessor :baz
end
