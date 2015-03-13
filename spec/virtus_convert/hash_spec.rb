require 'spec_helper'

describe VirtusConvert::Hash do

  describe '#to_hash' do
    it 'should convert basic hash' do
      hash = VirtusConvert::Hash.new({:foo => 'bar'})
      expect(hash.to_hash).to eq( {:foo => 'bar'} )
    end
  end
end
