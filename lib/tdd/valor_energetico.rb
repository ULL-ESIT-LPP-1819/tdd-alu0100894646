class ValorEnergetico

    attr_reader :etiqueta,:grasa,:saturada,:hidratos,:azucar
    
    def initialize(etiqueta,grasa,saturada,hidratos,azucar)
        
        @etiqueta = etiqueta
        @grasa = grasa
        @saturada = saturada
        @hidratos=hidratos
        @azucar=azucar
    end
    
end