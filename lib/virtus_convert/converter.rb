require 'virtus_convert/object'
require 'virtus_convert/hash'
require 'virtus_convert/array'

module VirtusConvert

  class Converter

    def initialize(unknown)
      @root = VirtusConvert::Hash.new(unknown) if unknown.is_a? ::Hash
      @root ||= VirtusConvert::Array.new(unknown) if unknown.is_a? ::Array
      @root ||= VirtusConvert::Object.new(unknown)
    end

    def to_hash
      @root.respond_to?(:to_hash) ? @root.to_hash : @root
    end

  end

end
