module PixelsPopulationHelper
  def draw_pixel(pixel)
    style =  %{background-color: rgb(#{pixel_rgb(pixel)}); width: #{pixel_width(pixel)}; height: #{pixel_height(pixel)};}
    puts style
    content_tag(:div, nil, style: style, class: 'pixel')
  end

  def pixel_rgb(pixel)
    "#{pixel.r}, #{pixel.g}, #{pixel.b}"
  end

  def pixel_height(pixel)
    "#{pixel.height}px"
  end

  def pixel_width(pixel)
    "#{pixel.width}px"
  end
end
