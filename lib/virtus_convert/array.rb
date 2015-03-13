module VirtusConvert
  class Array
    def initialize(array = [])
      @array = array.map{|item| VirtusConvert.new(item)}
    end

    def to_hash
      @array.map(&:to_hash)
    end

  end
end
