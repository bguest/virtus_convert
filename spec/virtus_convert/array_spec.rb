require 'spec_helper'

describe VirtusConvert::Array do

  describe '#to_hash' do
    it 'should convert basic array' do
      array = VirtusConvert::Array.new(['A', 'B', 'C'])
      expect(array.to_hash).to eq( ['A', 'B', 'C'] )
    end

    context 'when reject_nils: true' do
      it 'should not process nils' do
        array = VirtusConvert::Array.new(['A', nil, 'B', 'C', nil], reject_nils: true)
        expect(array.to_hash).to eq( ['A', 'B', 'C'] )
      end
    end
  end
end

