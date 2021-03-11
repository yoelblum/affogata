class Pixel
  attr_accessor :r, :g, :b
  WIDTH = 5
  HEIGHT = 5
  def initialize(r: rand(0..255), g: rand(0..255), b: rand(0..255))
    @r = r
    @g = g
    @b = b
  end

  def to_s
    "{#{@r}, #{@g}, #{@b}} "
  end

  def width
    WIDTH
  end

  def height
    HEIGHT
  end
end
