#!/usr/bin/env ruby

require 'gosu'

class Window < Gosu::Window
  def initialize
    super 800, 600

    self.caption = "Window Example"
  end
end

Window.new.show
