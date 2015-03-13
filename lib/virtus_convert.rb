require "virtus_convert/version"
require 'virtus_convert/converter'

module VirtusConvert
  def self.new(unknown)
    VirtusConvert::Converter.new(unknown)
  end
end
