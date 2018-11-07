class ValorEnergetico

    attr_reader :etiqueta,:grasa,:saturada,:hidratos,:azucar,:proteinas
    
    def initialize(etiqueta,grasa,saturada,hidratos,azucar,proteinas)
        
        @etiqueta = etiqueta
        @grasa = grasa
        @saturada = saturada
        @hidratos=hidratos
        @azucar=azucar
        @proteinas=proteinas
    end
    
end