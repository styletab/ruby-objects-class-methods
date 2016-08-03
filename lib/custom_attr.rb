# Dumb linter wants a comment
class Class
  # The * args indicates that the parameters should come in as an array
  def custom_attr_accessor(*args)
    # We simply iterate through each passed in argument...
    args.each do |arg|
      # Here's the getter
      self.class_eval("def #{arg};@#{arg};end")

      # Here's the setter
      self.class_eval("def #{arg}=(val);@#{arg}=val;end")
    end
  end
end

# Dumb linter wants a comment
class Person
  custom_attr_accessor :name, :age
end
