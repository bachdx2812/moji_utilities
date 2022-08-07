# frozen_string_literal: true

require_relative "moji_ultilities/version"

module MojiUltilities
  FULL_KANA = /^([ァ-ン]|ー)+$/.freeze
  HALF_KANA = /^[ｧ-ﾝﾞﾟ]+$/.freeze
  ZEN_KANA = /^([ァ-ンｧ-ﾝﾞﾟ]|ー)+$/.freeze

  class Error < StandardError; end

  def self.fullwidth_katakana?(chars)
    FULL_KANA.match?(chars)
  end

  def self.halfwidth_katakana?(chars)
    HALF_KANA.match?(chars)
  end

  def self.zen_katakana?(chars)
    ZEN_KANA.match?(chars)
  end
end
