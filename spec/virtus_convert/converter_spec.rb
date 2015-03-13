require 'spec_helper'
require 'ostruct'

describe VirtusConvert::Converter do

  describe '#to_hash' do
    it 'should convert straight hashes' do
      converter = VirtusConvert.new({'foo' => 'bar'})
      expect(converter.to_hash).to eq( {'foo' => 'bar'} )
    end

    it 'should convert mix of arrays and hases' do
      converter = VirtusConvert.new( {hash: 'string', array:['One', {two: 2}]} )
      expect(converter.to_hash).to eq( {hash: 'string', array:['One', {two: 2}]} )
    end

    it 'should convert objects with attributes' do
      object = OpenStruct.new(
        attributes: { string: 'a_string', array:['A', 'B'] }
      )
      converter = VirtusConvert.new( object )
      expect(converter.to_hash).to eq( {string: 'a_string', array:['A', 'B']})
    end

    it 'should convert mixture of objects and things' do
      object_1 = OpenStruct.new(
        attributes: { array: [{h1: 'h1', h2:'h2'}, 'A'], value1: 'val1' }
      )
      object_2 = OpenStruct.new(
        attributes: { object: object_1, value2: 'val2' }
      )
      hash = VirtusConvert.new(object_2).to_hash
      expect(hash).to eq({
        object:{array: [{h1: 'h1', h2:'h2'}, 'A'], value1: 'val1'},
        value2:'val2'
      })
    end
  end
end
