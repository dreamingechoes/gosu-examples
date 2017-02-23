#!/usr/bin/env ruby

require 'rubygems'
require 'gosu'

class Window < Gosu::Window

  def initialize
    super 496, 434
    self.caption = "Audio Example"

    tune = Gosu::Song.new(self, 'tune.mp3')
    tune.play(true)

    self.show
  end

  def draw
    background = Gosu::Image.new('scene.gif')
    background.draw(0,0,0)
  end

end

w = Window.new()
