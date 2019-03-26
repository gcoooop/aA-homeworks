class LRUCache
  def initialize(max_length)
    @max_length = max_length
    @cache = []
  end

  def count
    cache.length
  end

  def add(el)
    if @cache.include?(el)
      @cache.delete(el)
    else
      @cache.delete_at(0) if count >= max_length
    end
    @cache << el
  end

  def show
    p cache
  end

  private
  attr_reader :max_length
  attr_accessor :cache

end


johnny_cache = LRUCache.new(4)

johnny_cache.add("I walk the line")
johnny_cache.add(5)

p johnny_cache.count # => returns 2

johnny_cache.add([1,2,3])
johnny_cache.add(5)
johnny_cache.add(-5)
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.add([1,2,3,4])
johnny_cache.add("I walk the line")
johnny_cache.add(:ring_of_fire)
johnny_cache.add("I walk the line")
johnny_cache.add({a: 1, b: 2, c: 3})


johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]