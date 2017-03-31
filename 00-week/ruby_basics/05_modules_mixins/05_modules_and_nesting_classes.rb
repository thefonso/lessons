# You can declare classes and modules inside of each other.
class A
  
  class B
  end
  
  module C
    module D
      class C
        def self.deep_in_the_hole
          "How far does the rabbit hole go?"
        end
      end
    end
  end
  
end

# You can then access them with ::
A                             # => A
A::B                          # => A::B
A::C                          # => A::C
A::C::D                       # => A::C::D
A::C::D::C                    # => A::C::D::C
A::C::D::C.deep_in_the_hole   # => "How far does the rabbit hole go?"


# Note that even though they're named the same, these are different,
# like similarly named files in different directories
A::C == A::C::D::C            # => false