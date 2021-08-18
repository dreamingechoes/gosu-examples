#!/usr/bin/env ruby

require 'gosu'

class Window < Gosu::Window
  def initialize
    super 400, 400

    self.caption = "Image Example"

    @background = Gosu::Image.new("#{__dir__}/images/image.png")
  end

  def draw
    @background.draw(0, 0, 0)
  end
end

Window.new.show
