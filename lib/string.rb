require "./lib/colorizr"
require "pry"

class String
  Colorizr.create_colors

  def self.colors
    Colorizr::COLOR_CODE_MAP.keys
  end

  def self.sample_colors
    String.colors.each do |color|
      puts "This is #{color}".send(color)
    end
  end
end
