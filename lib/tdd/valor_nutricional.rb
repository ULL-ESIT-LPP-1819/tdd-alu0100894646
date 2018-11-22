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
   
   def initialize(datos)
      super(datos[0],datos[1])
      @peso = datos[2]
      @talla = datos[3]
      @edad = datos[4]
      if(datos[5] == "Hombre")
            @sexo = 1;
            
      elsif(datos[5] == "Mujer")
            @sexo = 0;
      end
      @cintura = (datos[6][0] + datos[6][1])/2
      @cadera = (datos[7][0]+datos[7][1])/2
   end
end