#!/usr/bin/env ruby

require 'gosu'

class Star
  attr_reader :x, :y

  def initialize(animation)
    @animation = animation
    @color = Gosu::Color::BLACK.dup
    @color.red = rand(256 - 40) + 40
    @color.green = rand(256 - 40) + 40
    @color.blue = rand(256 - 40) + 40
    @x = rand * 640
    @y = rand * 480
  end

  def draw
    img = @animation[Gosu.milliseconds / 100 % @animation.size]
    img.draw(@x - img.width / 2.0, @y - img.height / 2.0, 1, 1, 1, @color, :add)
  end
end

class Window < Gosu::Window
  def initialize
    super 640, 480
    self.caption = "Animation Example"

    @background_image = Gosu::Image.new("#{__dir__}/media/space.png", :tileable => true)
    @star_anim = Gosu::Image.load_tiles("#{__dir__}/media/star.png", 25, 25)
    @stars = Array.new
  end

  def update
    if rand(100) < 4 and @stars.size < 25
      @stars.push(Star.new(@star_anim))
    end
  end

  def draw
    @background_image.draw(0,0,0)
    @stars.each { |star| star.draw }
  end
end

Window.new.show
