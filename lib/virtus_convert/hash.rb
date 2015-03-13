module VirtusConvert
  class Hash
    def initialize(hash = {})
      @hash = hash.inject({}){|h,(k,v)| h[k] = VirtusConvert.new(v); h}
    end

    def to_hash
      @hash.inject({}) do |hash,(k, v)|
        hash[k] = (v.respond_to?(:to_hash) ? v.to_hash : v)
        hash
      end
    end
  end

end

