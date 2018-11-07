class ValorEnergetico

    attr_reader :etiqueta,:grasa,:saturada,:hidratos,:azucar,:proteinas,:sal,:valor_energetico
    
    def initialize(etiqueta,grasa,saturada,hidratos,azucar,proteinas,sal)
        
        @etiqueta = etiqueta
        @grasa = grasa
        @saturada = saturada
        @hidratos=hidratos
        @azucar=azucar
        @proteinas=proteinas
        @sal = sal
        
        @valor_energetico = []
    end
    
    def calc_val_energetico_KJ
        
    end
    
end