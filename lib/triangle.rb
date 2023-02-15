class Triangle
  class TriangleError < StandardError; end
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3].sort
    raise TriangleError if @sides.any?(&:zero?) || @sides[0] + @sides[1] <= @sides[2]
  end

  def kind
    return :equilateral if @sides.uniq.size == 1
    return :isosceles if @sides.uniq.size == 2
    :scalene
  end

end
