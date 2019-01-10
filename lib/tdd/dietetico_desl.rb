class Dieta_dsl
    attr_accessor :name
    
    def initialize(name, &block)
       @dia = name
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
        output = "\n #{@titulo}"
        output << "\n ###############################################################################"
        output << "\n #{@dia}\t\t\t\tComposición nutricional"
        output << "\n ==============================================================================="
        output << "\n        \t\t\tgrasas \t carbohidratos \t proteinas \t fibra \t sal \t valor energetico"
        output << "\n Desayuno"
        total_kcal = 0
        @desayuno.each do |elemento|
            
            if elemento[:descripcion] == nil
            	elemento[:descripcion] = 0.00
        	end
        
			if elemento[:fibra] == nil
            	elemento[:fibra] = 0.00
        	end
        
			if elemento[:grasas] == nil
            	elemento[:grasas] = 0.00
        	end
        
			if elemento[:carbohidratos] == nil
            	elemento[:carbohidratos] = 0.00
			end
        		
			if elemento[:proteinas] == nil
            	elemento[:proteinas] = 0.00
        	end
        
			if elemento[:sal] == nil
            	elemento[:sal] = 0.00
        	end
            output << "\n \"#{elemento[:descripcion]}\""
            output << "\t #{ '%.2f' % elemento[:grasas]}"
            output << "\t\t #{ '%.2f' % elemento[:carbohidratos]}"
            output << "\t #{ '%.2f' % elemento[:proteinas]}"
            output << "\t\t #{ '%.2f' % elemento[:fibra]}"
            output << "\t #{ '%.2f' % elemento[:sal]}"
            output << "\t #{ '%.2f' % kcal_calc(elemento)}"
            total_kcal+=kcal_calc(elemento)
        end
        output << "\n\n\n Almuerzo"
        @almuerzo.each do |elemento|
            if elemento[:descripcion] == nil
            	elemento[:descripcion] = 0.00
        	end
        
			if elemento[:fibra] == nil
            	elemento[:fibra] = 0.00
        	end
        
			if elemento[:grasas] == nil
            	elemento[:grasas] = 0.00
        	end
        
			if elemento[:carbohidratos] == nil
            	elemento[:carbohidratos] = 0.00
			end
        		
			if elemento[:proteinas] == nil
            	elemento[:proteinas] = 0.00
        	end
        
			if elemento[:sal] == nil
            	elemento[:sal] = 0.00
        	end
            output << "\n \"#{elemento[:descripcion]}\""
            output << "\t #{ '%.2f' % elemento[:grasas]}"
            output << "\t\t #{ '%.2f' % elemento[:carbohidratos]}"
            output << "\t #{ '%.2f' % elemento[:proteinas]}"
            output << "\t\t #{ '%.2f' % elemento[:fibra]}"
            output << "\t #{ '%.2f' % elemento[:sal]}"
            output << "\t #{ '%.2f' % kcal_calc(elemento)}"
            total_kcal+=kcal_calc(elemento)
        end
        output << "\n\n\n Cena"
        @cena.each do |elemento|
            if elemento[:descripcion] == nil
            	elemento[:descripcion] = 0.00
        	end
        
			if elemento[:fibra] == nil
            	elemento[:fibra] = 0.00
        	end
        
			if elemento[:grasas] == nil
            	elemento[:grasas] = 0.00
        	end
        
			if elemento[:carbohidratos] == nil
            	elemento[:carbohidratos] = 0.00
			end
        		
			if elemento[:proteinas] == nil
            	elemento[:proteinas] = 0.00
        	end
        
			if elemento[:sal] == nil
            	elemento[:sal] = 0.00
        	end
            output << "\n \"#{elemento[:descripcion]}\""
            output << "\t #{ '%.2f' % elemento[:grasas]}"
            output << "\t\t #{ '%.2f' % elemento[:carbohidratos]}"
            output << "\t #{ '%.2f' % elemento[:proteinas]}"
            output << "\t\t #{ '%.2f' % elemento[:fibra]}"
            output << "\t #{ '%.2f' % elemento[:sal]}"
            output << "\t #{ '%.2f' % kcal_calc(elemento)}"
            total_kcal+=kcal_calc(elemento)
        end
        output << "\n Valor energetico total #{'%.2f' % total_kcal}"
        output
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
    
    def desayuno(name, options={})
        desayuno = name
        desayuno << "(#{options[:descripcion]})" if options[:descripcion]
        desayuno << "(#{options[:porcion]})" if options[:porcion]
        desayuno << "(#{options[:gramos]})" if options[:gramos]
        desayuno << "(#{options[:grasas]})" if options[:grasas]
        desayuno << "(#{options[:carbohidratos]})" if options[:carbohidratos]
        desayuno << "(#{options[:proteinas]})" if options[:proteinas]
        desayuno << "(#{options[:fibra]})" if options[:fibra]
        desayuno << "(#{options[:sal]})" if options[:sal]
        @desayuno << desayuno 
    end
    
    def almuerzo(name, options={})
        almuerzo = name
        almuerzo << "(#{options[:descripcion]})" if options[:descripcion]
        almuerzo << "(#{options[:porcion]})" if options[:porcion]
        almuerzo << "(#{options[:gramos]})" if options[:gramos]
        almuerzo << "(#{options[:grasas]})" if options[:grasas]
        almuerzo << "(#{options[:carbohidratos]})" if options[:carbohidratos]
        almuerzo << "(#{options[:proteinas]})" if options[:proteinas]
        almuerzo << "(#{options[:fibra]})" if options[:fibra]
        almuerzo << "(#{options[:sal]})" if options[:sal]
        @almuerzo << almuerzo 
    end
    
    def cena(name, options={})
        cena = name
        cena << "(#{options[:descripcion]})" if options[:descripcion]
        cena << "(#{options[:porcion]})" if options[:porcion]
        cena << "(#{options[:gramos]})" if options[:gramos]
        cena << "(#{options[:grasas]})" if options[:grasas]
        cena << "(#{options[:carbohidratos]})" if options[:carbohidratos]
        cena << "(#{options[:proteinas]})" if options[:proteinas]
        cena << "(#{options[:fibra]})" if options[:fibra]
        cena << "(#{options[:sal]})" if options[:sal]
        @cena << cena 
    end
    
    def kcal_calc(elemento)
        (elemento[:grasas]*9 + elemento[:carbohidratos]*4 + elemento[:proteinas]*4 +elemento[:fibra]*2 + elemento[:sal]*6)/10
        
    end
end