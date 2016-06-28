class Rectangle
  def initialize(height:, width:)
    @height = height
    @width = width
  end

  def set_height(height)
    @height = height
  end

  def set_width(width)
    @width = width
  end
end

# Rectangle.new({width: 4, height: 4})  # => #<Rectangle:0x007fdc32018f18 @height=4, @width=4>
Rectangle.new(height: 4, width: 5 width)

class Square < Rectangle
  def set_height(height)
    super(height)
    @width = height
  end

  def set_width(width)
    super(width)
    @height = width
  end
end
