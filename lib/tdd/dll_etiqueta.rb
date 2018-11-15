Node = Struct.new(:value,:next,:prev)

class Dll  
    
    attr_accessor :head,:tail
    
    def initialize
        @head = nil
        @tail = nil
    end
    
    def insert_head(value)
       
       nodo = Node.new(value,nil,nil)
       
       if(@head == nil)
           @head = nodo
           @tail = nodo
       else
           @head.prev = nodo
           nodo.next = @head
           @head = nodo
       end
        
    end
    
    def insert_tail(value)
       
       nodo = Node.new(value,nil,nil)
       
       if(@tail ==nil)
           @tail=nodo
           @head=nodo
       else
           @tail.next=nodo
           nodo.prev=tail
           @tail=nodo
       end
    end
    
end