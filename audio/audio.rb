#!/usr/bin/env ruby

require 'gosu'

class Window < Gosu::Window

  def initialize
    super 800, 445

    self.caption = "Audio Example"

    tune = Gosu::Song.new("#{__dir__}/sounds/tune.mp3")
    tune.play(true)

    @background = Gosu::Image.new("#{__dir__}/images/scene.jpeg")
  end

  def draw
    @background.draw(0, 0, 0)
  end
end

Window.new.show
