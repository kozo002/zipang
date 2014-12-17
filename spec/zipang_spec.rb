require 'spec_helper'

RSpec.describe Zipang do
  let(:sentences) do
    {
      'こんにちは、世界' => 'konnichiwa-sekai',
      'こんにちは　世界' => 'konnichiwa-sekai',
      '　はじめまして、ジパングです。年齢は０歳' => 'hajimemashite-jipangu-desu-nenrei-wa-zero-sai',
      '【こんにちは】2014/12 Zipang誕生!!【世界】' => 'konnichiwa-2014-12-zipang-tanjo-sekai'
    }
  end

  describe '.to_slug' do
    it 'should convert to alphabet slug from japanese' do
      sentences.each do |japanese, slug|
        expect(Zipang.to_slug(japanese)).to eq(slug)
      end
    end
  end
end
