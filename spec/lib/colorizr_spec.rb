require "./lib/colorizr"

describe Colorizr do
  describe "#blue" do
    it "makes the string blue" do
      text = "My new string"

      colored_text = text.blue

      expect(colored_text).to eq("\e[34mMy new string\e[0m")
    end
  end
end
