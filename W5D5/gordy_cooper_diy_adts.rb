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
        
    end

    def set(key, value)

    end

    def get(key)

    end

    def delete(key)

    end

    def show

    end

end

