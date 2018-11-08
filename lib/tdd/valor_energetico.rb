class ValorEnergetico

    attr_reader :etiqueta,:grasa,:saturada,:hidratos,:azucar,:proteinas,:sal,:valor_energetico
    
    def initialize(etiqueta,grasa,saturada,hidratos,azucar,proteinas,sal)
        
        @etiqueta = etiqueta
        @grasa = grasa
        @saturada = saturada
        @hidratos= hidratos
        @azucar= azucar
        @proteinas=proteinas
        @sal = sal
        
        @valor_energetico = []
    end
    
    def calc_val_energetico_KJ
         
        if @valor_energetico.length < 3
            valor_energetico << (37.0*@grasa) + (17.0*@hidratos) + (17.0*@proteinas) + (25.0*@sal)
        end
        
        valor_energetico[0]
    end
    
    def calc_val_energetico_Kcal
        
        if @valor_energetico.length < 3
            valor_energetico << (9.0*@grasa) + (4.0*@hidratos) + (4.0*@proteinas) + (6.0*@sal)
        end
        
        valor_energetico[1]
    end
    
end