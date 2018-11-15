Node = Struct.new(:value,:next,:prev)

class Dll  
    
    attr_accessor :head,:tail
    
    def initialize()
        @head = nil
        @tail = nil
    end
end