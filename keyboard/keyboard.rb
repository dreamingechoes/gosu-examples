#!/usr/bin/env ruby

require 'rubygems'
require 'gosu'

class Window < Gosu::Window

  def initialize
    super 970, 545
    self.caption = "Keyboard Example"
    @x = 200

    self.show
  end

  def draw
    background = Gosu::Image.new('background.png')
    background.draw(0,0,0)

    mario = Gosu::Image.new('mario.png')
    mario.draw(@x, 420, 1)
  end

  def button_down(id)
    if id == Gosu::KB_LEFT
      @x -= 10
    elsif id == Gosu::KB_RIGHT
      @x += 10
    end
  end

end

w = Window.new()
