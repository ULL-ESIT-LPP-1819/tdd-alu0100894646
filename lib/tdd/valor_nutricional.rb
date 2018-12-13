class Individuo 
    include Comparable
    attr_reader :nombre, :apellido
    
    def initialize(nombre,apellido)
        @nombre = nombre
        @apellido = apellido
    end
    
    def to_s 
        "#{@nombre} #{@apellido}"
    end
    
    def <=>(other)
       return nil unless other.instance_of?Individuo
       @nombre <=> other.nombre
    end
end

class Paciente < Individuo
   attr_reader :peso,:talla, :edad,:sexo,:cintura,:cadera
   
   def initialize(nombre,apellido,peso,talla,edad,sexo,cintura,cadera)
      super(nombre,apellido)
      @peso = peso
      @talla = talla
      @edad = edad
      if(sexo == "Hombre")
            @sexo = 1;
            
      elsif(sexo == "Mujer")
            @sexo = 0;
      end
      @cintura = (cintura[0] + cintura[1])/2
      @cadera = (cadera[0]+cadera[1])/2
   end
   
    def imc_calc
       
       @imc = (@peso/(@talla*@talla)).round(2)
       
        if(@imc < 18.5)
            "Delgado"
       
        elsif (@imc > 18.5 && @imc < 24.9)
            "Aceptable"
            
        elsif (@imc > 25 && @imc <29.9)
            "Sobrepeso"
                
        elsif(@imc > 30)
            "Obesidad"
        end
    end

    def to_s 
        
       "#{super.to_s} #{@peso} #{@talla} #{@edad} #{@sexo} #{@cintura} #{@cadera}" 
       
    end
    
    def peso_ideal
        
       ((@talla-150)*0.75 + 50).round(2)
       
    end
    
    def gasto_energetico
    
        return ((10*@peso)+(6.25*@talla)-(5*@edad)+5).round(2) if @sexo == 1
        ((10*@peso)+(6.25*@talla)-(5*@edad) - 161).round(2)
        
    end
    
    def efecto_termogeno

        (gasto_energetico * 0.10).round(2)
        
    end
end