#!/usr/bin/env ruby

require 'rubygems'
require 'gosu'

class Window < Gosu::Window

  def initialize
    super 496, 434
    self.caption = "Sample Example"

    self.show
  end

  def draw
    keyboard = Gosu::Image.new('keyboard.png')
    keyboard.draw(30,130,1)

    background = Gosu::Image.new('background.jpg')
    background.draw(0,0,0,3,3)

    font = Gosu::Font.new(self, 'hack', 20)
    font.draw("Push Q to play note C", 140, 10, 3, 1, 1, Gosu::Color::WHITE)
    font.draw("Push W to play note D", 140, 30, 3, 1, 1, Gosu::Color::WHITE)
    font.draw("Push E to play note E", 140, 50, 3, 1, 1, Gosu::Color::WHITE)
    font.draw("Push R to play note F", 140, 70, 3, 1, 1, Gosu::Color::WHITE)
    font.draw("Push T to play note G", 140, 90, 3, 1, 1, Gosu::Color::WHITE)
    font.draw("Push Y to play note A", 140, 110, 3, 1, 1, Gosu::Color::WHITE)
    font.draw("Push U to play note B", 140, 130, 3, 1, 1, Gosu::Color::WHITE)
    font.draw("Push I to play note C", 140, 150, 3, 1, 1, Gosu::Color::WHITE)
  end

  def button_down(id)
    if id == Gosu::KB_Q
      path = 'notes/Piano11.mp3'
    elsif id == Gosu::KB_W
      path = 'notes/Piano13.mp3'
    elsif id == Gosu::KB_E
      path = 'notes/Piano15.mp3'
    elsif id == Gosu::KB_R
      path = 'notes/Piano16.mp3'
    elsif id == Gosu::KB_T
      path = 'notes/Piano18.mp3'
    elsif id == Gosu::KB_Y
      path = 'notes/Piano110.mp3'
    elsif id == Gosu::KB_U
      path = 'notes/Piano112.mp3'
    elsif id == Gosu::KB_I
      path = 'notes/Piano113.mp3'
    else
      path = 'notes/Piano11.mp3'
    end
    fx = Gosu::Sample.new(self, path)
    fx.play(0.3)
  end

end

w = Window.new()
