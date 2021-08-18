#!/usr/bin/env ruby

require 'gosu'

class Window < Gosu::Window
  def initialize
    super 970, 545

    self.caption = 'Keyboard Example'

    @background = Gosu::Image.new("#{__dir__}/images/background.png")
    @mario = Gosu::Image.new("#{__dir__}/images/mario.png")
    @x = 200
  end

  def draw
    @background.draw(0, 0, 0)
    @mario.draw(@x, 420, 1)
  end

  def button_down(id)
    if id == Gosu::KB_LEFT
      @x -= 10
    elsif id == Gosu::KB_RIGHT
      @x += 10
    end
  end
end

Window.new.show
