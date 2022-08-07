# frozen_string_literal: true

RSpec.describe MojiUltilities do
  it "has a version number" do
    expect(MojiUltilities::VERSION).not_to be nil
  end

  describe "katakana methods" do
    let!(:fullwidth_katakana_str) { "カタカナ" }
    let!(:halfwidth_katakana_str) { "ｧｨｩｪｫｬｭｮｯ" }

    it "fullwidth_katakana?" do
      expect(described_class.fullwidth_katakana?(fullwidth_katakana_str)).to eq(true)
      expect(described_class.halfwidth_katakana?(fullwidth_katakana_str)).to eq(false)
      expect(described_class.zen_katakana?(fullwidth_katakana_str)).to eq(true)
    end

    it "halfwidth_katakana?" do
      expect(described_class.fullwidth_katakana?(halfwidth_katakana_str)).to eq(false)
      expect(described_class.halfwidth_katakana?(halfwidth_katakana_str)).to eq(true)
      expect(described_class.zen_katakana?(halfwidth_katakana_str)).to eq(true)
    end
  end
end
