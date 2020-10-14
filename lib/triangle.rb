# class Triangle
#   def initialize (a,b,c)
#     @a = a
#     @b = b
#     @c = c
#   end

#   def kind
#     all_sides = [@a, @b, @c]
#     all_sides.sort!
#     if all_sides.any? {|side| side <=0} 
#       raise TriangleError
#     elsif all_sides[0] + all_sides[1] <= all_sides[2]
#       raise TriangleError
#     elsif @a == @b && @b == @c
#       :equilateral
#     elsif @a != @b && @b != @c && @a != @c               
#       :scalene
#     else
#       :isosceles
#     end
#   end

  
# end


class Triangle
  attr_accessor :sides
  
  @sides = []
  
  def initialize (side1, side2, side3)
    @sides = [side1, side2, side3]
    @sides.sort!
  end
  
  def kind
    if @sides.any?{|side| side <= 0} || ((@sides[0] + @sides[1]) <= @sides[2])
      raise TriangleError
    elsif @sides.uniq.length == 1
      :equilateral
    elsif @sides.uniq.length == 2
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
    
  end
end
