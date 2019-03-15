class Stack

    def initialize
      @stack = []
    end

    def push(el)
      @stack << el
    end

    def pop
      @stack.pop
    end

    def peek
      @stack[-1]
    end
end


class Queue

    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue[0]
    end

end


class Map

    def initialize
        @map = []
    end

    def set(key, value)
        
        pair = [key, value]

       (0...@map.length).each do |idx|
            if @map[idx][0] == key
                @map[idx] = pair
                return true
            end
       end

       @map << pair

       @map << pair if @map.empty?
       true
    end

    def get(key)
        @map.each do |ele|
            return ele[1] if ele[0] == key
        end
        nil
    end

    def delete(key)
        @map.each do |ele|
            @map.delete(ele) if ele[0] == key
        end
    end

    def show
        @map.each do |ele|
            puts "#{ele[0]} => #{ele[1]}"
        end
    end

end
