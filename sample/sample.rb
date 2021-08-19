#!/usr/bin/env ruby

require 'gosu'

class Window < Gosu::Window
  def initialize
    super 800, 600

    self.caption = 'Sample Example'

    @keyboard = Gosu::Image.new("#{__dir__}/images/keyboard.png")
    @background = Gosu::Image.new("#{__dir__}/images/background.jpg")
  end

  def draw
    @keyboard.draw(180, 260, 1)
    @background.draw(0, 0, 0, 3, 3)

    font = Gosu::Font.new(self, 'hack', 20)
    font.draw_text('Push Q to play note C', 280, 40, 3, 1, 1, Gosu::Color::WHITE)
    font.draw_text('Push W to play note D', 280, 60, 3, 1, 1, Gosu::Color::WHITE)
    font.draw_text('Push E to play note E', 280, 80, 3, 1, 1, Gosu::Color::WHITE)
    font.draw_text('Push R to play note F', 280, 100, 3, 1, 1, Gosu::Color::WHITE)
    font.draw_text('Push T to play note G', 280, 120, 3, 1, 1, Gosu::Color::WHITE)
    font.draw_text('Push Y to play note A', 280, 140, 3, 1, 1, Gosu::Color::WHITE)
    font.draw_text('Push U to play note B', 280, 160, 3, 1, 1, Gosu::Color::WHITE)
    font.draw_text('Push I to play note C', 280, 180, 3, 1, 1, Gosu::Color::WHITE)
  end

  def button_down(id)
    if id == Gosu::KB_Q
      path = "#{__dir__}/notes/Piano11.mp3"
    elsif id == Gosu::KB_W
      path = "#{__dir__}/notes/Piano13.mp3"
    elsif id == Gosu::KB_E
      path = "#{__dir__}/notes/Piano15.mp3"
    elsif id == Gosu::KB_R
      path = "#{__dir__}/notes/Piano16.mp3"
    elsif id == Gosu::KB_T
      path = "#{__dir__}/notes/Piano18.mp3"
    elsif id == Gosu::KB_Y
      path = "#{__dir__}/notes/Piano110.mp3"
    elsif id == Gosu::KB_U
      path = "#{__dir__}/notes/Piano112.mp3"
    elsif id == Gosu::KB_I
      path = "#{__dir__}/notes/Piano113.mp3"
    else
      path = "#{__dir__}/notes/Piano11.mp3"
    end

    fx = Gosu::Sample.new(path)
    fx.play(0.3)
  end
end

Window.new.show
