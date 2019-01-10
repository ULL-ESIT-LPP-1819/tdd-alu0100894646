class Dieta_dsl
    attr_accessor :name
    
    def initialize(name, &block)
       @titulo = ""
       @ingesta = []
       @desayuno = []
       @almuerzo = []
       @cena = []
    
    
        if block_given?
            if block.arity == 1
                yield self
            else
                instance_eval(&block)
            end
        end
    end
    
    def to_s 
        
    end
    
    def titulo(title)
        
        @titulo = title
        
    end
    
    def ingesta(name, options={})
        
        ingesta = name
        ingesta << "(#{options[:min]})" if options[:min]
        ingesta << "(#{options[:max]})" if options[:max]
        
        @ingesta << ingesta
    end
end