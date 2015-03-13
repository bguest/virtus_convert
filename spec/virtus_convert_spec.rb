require 'spec_helper'

describe VirtusConvert do
  it 'has a version number' do
    expect(VirtusConvert::VERSION).not_to be nil
  end

  describe '.new' do
    it 'should return VirtusConvert::Convert object' do
      expect(VirtusConvert.new('str').class).to eq VirtusConvert::Converter
    end
  end

end
