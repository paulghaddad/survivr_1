require "./lib/colorizr/terminal_colors"

class String
  def self.colors
    TerminalColors::COLOR_CODE_MAP.keys
  end

  def self.sample_colors
    String.colors.each do |color|
      puts "This is #{color}".send(color)
    end
  end
end
