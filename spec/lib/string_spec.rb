require "./lib/string"
require "./lib/colorizr"

describe String do
  describe ".colors" do
    it "returns all the color options" do
      colors = String.colors

      expect(colors).to contain_exactly(:red, :green, :yellow, :blue, :pink,
                                        :light_blue, :white, :light_grey, :black)
    end
  end

  describe ".sample_colors" do
    it "prints a list of sample color output" do
      expect { String.sample_colors }.to output(/This is red/).to_stdout
      expect { String.sample_colors }.to output(/This is green/).to_stdout
      expect { String.sample_colors }.to output(/This is yellow/).to_stdout
      expect { String.sample_colors }.to output(/This is blue/).to_stdout
      expect { String.sample_colors }.to output(/This is pink/).to_stdout
      expect { String.sample_colors }.to output(/This is light_blue/).to_stdout
      expect { String.sample_colors }.to output(/This is white/).to_stdout
      expect { String.sample_colors }.to output(/This is light_grey/).to_stdout
      expect { String.sample_colors }.to output(/This is black/).to_stdout
    end
  end
end
