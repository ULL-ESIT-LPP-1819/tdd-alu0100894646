class ValorEnergetico

    attr_reader :etiqueta,:grasa,:saturada,:hidratos,:azucar,:proteinas,:sal
    
    def initialize(etiqueta,grasa,saturada,hidratos,azucar,proteinas,sal)
        
        @etiqueta = etiqueta
        @grasa = grasa
        @saturada = saturada
        @hidratos=hidratos
        @azucar=azucar
        @proteinas=proteinas
        @sal = sal
    end
    
end