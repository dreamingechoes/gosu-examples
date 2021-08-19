#!/usr/bin/env ruby

require 'gosu'

class Window < Gosu::Window
  def initialize
    super 800, 600

    self.caption = "Font Example"

    @background = Gosu::Image.new("#{__dir__}/images/background.jpg")
  end

  def draw
    @background.draw(0, 0, 0, 3, 3)

    font = Gosu::Font.new(self, 'Zapfino', 44)
    font.draw_text("↑ ↑ ↓ ↓ ← → ← → B A", 180, 280, 3, 1, 1, Gosu::Color::WHITE)
  end
end

Window.new.show
