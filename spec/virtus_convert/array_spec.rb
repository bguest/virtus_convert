require 'spec_helper'

describe VirtusConvert::Hash do

  describe '#to_hash' do
    it 'should convert basic array' do
      array = VirtusConvert::Array.new(['A', 'B', 'C'])
      expect(array.to_hash).to eq( ['A', 'B', 'C'] )
    end
  end
end

