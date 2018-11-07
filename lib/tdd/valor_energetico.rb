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
         
        valor_energetico << (37.0*@grasa) + (37.0*@saturada) + (17.0*@hidratos) + (17.0*@proteinas) + (25.0*@sal)
        valor_energetico[0]
    end
    
end