class Individuo 
    attr_reader :nombre, :apellido
    
    def initialize(nombre,apellido)
        @nombre = nombre
        @apellido = apellido
    end
    
    def to_s 
        "#{@nombre} #{@apellido}"
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
end