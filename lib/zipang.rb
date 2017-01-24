require "kuromoji"
require "romaji"

require "zipang/version"

module Zipang
  KATAKANA_PATTERN = /^[ア-ンー〜]+$/
  ZENKAKU_SPACES_PATTERN = /\p{blank}/
  GLUE = '-'

  class << self
    def to_slug(str)
      Kuromoji::Core.new.process(:getAllFeatures, clean_spaces(str))
        .map{ |word, features| [word].concat features.split(',') }
        .map{ |words| words.last == '*' ? words.first : words.last }
        .map{ |word| word.tr('０-９', '0-9') }
        .map{ |word| katakana?(word) ? Romaji.kana2romaji(word) : word }
        .map{ |word| word.match(/^[0-9a-zA-Z\-]+$/) ? word.downcase : nil }
        .compact
        .join(GLUE)
        .squeeze('-')
    end

    def clean_spaces(str)
      str.gsub(ZENKAKU_SPACES_PATTERN, "\s").strip.gsub(/\s/, GLUE)
    end

    def katakana?(str)
      return unless str
      str.match(KATAKANA_PATTERN)
    end
  end
end
