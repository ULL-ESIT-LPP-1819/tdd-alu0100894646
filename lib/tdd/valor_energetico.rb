class ValorEnergetico

    attr_reader :etiqueta,:grasa,:saturada,:hidratos
    
    def initialize(etiqueta,grasa,saturada,hidratos)
        
        @etiqueta = etiqueta
        @grasa = grasa
        @saturada = saturada
        @hidratos=hidratos
        
    end
    
end