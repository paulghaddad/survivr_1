require "./lib/colorizr"

describe Colorizr do
  describe ".create_colors" do
    it "dynamically creates color methods" do
      Colorizr.create_colors

      expect(String.instance_methods).to include(:red)
      expect(String.instance_methods).to include(:green)
      expect(String.instance_methods).to include(:yellow)
      expect(String.instance_methods).to include(:blue)
      expect(String.instance_methods).to include(:pink)
      expect(String.instance_methods).to include(:light_blue)
      expect(String.instance_methods).to include(:white)
      expect(String.instance_methods).to include(:light_grey)
      expect(String.instance_methods).to include(:black)
    end
  end

  describe "#blue" do
    it "makes the string blue" do
      text = "My new string"

      colored_text = text.blue

      expect(colored_text).to eq("\e[34mMy new string\e[0m")
    end
  end
end
