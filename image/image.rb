#!/usr/bin/env ruby

require 'rubygems'
require 'gosu'

class Window < Gosu::Window

  def initialize
    super 400, 400
    self.caption = "Image Example"

    self.show
  end

  def draw
    background = Gosu::Image.new('image.png')
    background.draw(0,0,0)
  end

end

w = Window.new()
