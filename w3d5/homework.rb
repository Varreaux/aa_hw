class Stack
   
    attr_accessor :array
   
    def initialize
      @array = []
    end
  
    def push(ele)
      array.push(ele)
      ele
    end
  
    def pop
      array.pop
    end
  
    def peek
      array[-1]
    end
  
end


class Queue
    
    attr_accessor :array
    
    def initialize
      @array = []
    end
  
    def enqueue(ele)
      array.push(ele)
      ele
    end
  
    def dequeue
      array.shift
    end
  
    def peek
      array.first
    end
    

end




class Map
    attr_accessor :mapped_array

    def initialize
        @mapped_array = []
    end

    def set(key, value)
        already_exists = false
        @mapped_array.each_with_index do |ele, i|
            if ele[0] == key
                @mapped_array[i][1] = value
                already_exists = true
                break
            end
        end
        if !already_exists
            @mapped_array.push([key, value])
        end
    end

    def get(key)
        @mapped_array.each do |ele|
            if ele[0] == key
                return ele[1]
            end
        end
        return nil
    end

    def delete(key)
        @mapped_array.each_with_index do |ele, i|
            if ele[0] == key
                @mapped_array.delete_at(i)
                break
            end
        end
    end

    def show
        return @mapped_array
    end

end