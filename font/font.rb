#!/usr/bin/env ruby

require 'rubygems'
require 'gosu'

class Window < Gosu::Window

  def initialize
    super 496, 434
    self.caption = "Font Example"

    self.show
  end

  def draw
    background = Gosu::Image.new('background.jpg')
    background.draw(0,0,0,3,3)

    font = Gosu::Font.new(self, 'pixeladeregular', 44)
    font.draw("↑ ↑ ↓ ↓ ← → ← → B A", 38, 200, 3, 1, 1, Gosu::Color::WHITE)
  end

end

w = Window.new()
