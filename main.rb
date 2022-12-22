#!/usr/bin/env ruby
require './app'

class Main
  def main
    app = App.new
    app.library_menu
  end
end
