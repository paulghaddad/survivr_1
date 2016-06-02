require "./lib/colorizr/string"

class Colorizr
  COLOR_CODE_MAP = {
    red: 31,
    green: 32,
    yellow: 33,
    blue: 34,
    pink: 169,
    light_blue: 104,
    white: 37,
    light_grey: 47,
    black: 30
  }

  def self.create_colors
    COLOR_CODE_MAP.each do |color, code|
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
