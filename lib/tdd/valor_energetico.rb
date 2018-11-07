class ValorEnergetico

    attr_reader :etiqueta,:grasa,:saturada
    
    def initialize(etiqueta,grasa,saturada)
        
        @etiqueta = etiqueta;
        @grasa = grasa;
        @saturada = saturada;
    end
    
end