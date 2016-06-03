require "./lib/colorizr/string"
require "./lib/colorizr/terminal_colors"

class Colorizr
  def self.create_colors
    TerminalColors::COLOR_CODE_MAP.each do |color, code|
      method = %Q{
        def #{color}
          "\e[#{code}m" + self + "\e[0m"
        end
      }

      String.class_eval(method)
    end
  end

  Colorizr.create_colors
end
