#!/usr/bin/env ruby

require 'rubygems'
require 'gosu'

class Window < Gosu::Window

  def initialize
    super 496, 434
    self.caption = "Window Example"

    self.show
  end

  def draw
  end

end

w = Window.new()
