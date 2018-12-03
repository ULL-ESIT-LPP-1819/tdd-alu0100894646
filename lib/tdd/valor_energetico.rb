class ValorEnergetico

    include Comparable
    attr_reader :etiqueta,:grasa,:saturada,:hidratos,:azucar,:proteinas,:sal,:valor_energetico,:porcion,:num_porciones
    
    def initialize(etiqueta,grasa,saturada,hidratos,azucar,proteinas,sal,porcion,num_porciones)
        
        @etiqueta = etiqueta
        @grasa = grasa
        @saturada = saturada
        @hidratos= hidratos
        @azucar= azucar
        @proteinas=proteinas
        @sal = sal
        
        @valor_energetico = []
        @num_porciones = num_porciones;
        @porcion = porcion/100
        
        calc_val_energetico_KJ
        calc_val_energetico_Kcal
        #                       Kj      Kcal   Fat Fsat HCar  Azuc  Prot Sal
        @ingesta_recomendada = [8400.0,2000.0,70.0,20.0,260.0,90.0,50.0,6.0]
        
    end
    
    def <=>(other)
        return nil unless other.instance_of?ValorEnergetico
        @etiqueta <=> other.etiqueta
    end
    
    def get_salt
       
       if(@sal < 6.0)
        "Bajo"
       else
        "Alto"
       end
        
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
    
    def to_s
        
        #puts "Valores Nutricionales para #{@etiqueta} con porciones de tamaño #{@porcion*100}g y con #{@num_porciones} porcion(es)"
        #puts "\t\t Por 100g/ml de producto | IR (por 100g/ml) | Porcion de #{@porcion*100}g/ml | IR por #{@porcion*100}g"
        #puts "Valor Energético  #{@valor_energetico[0]} Kj \t\t | #{(@valor_energetico[0]/@ingesta_recomendada[0]).round(2)*100}%  \t\t| #{(@valor_energetico[0]*@porcion).round(2)}Kj \t\t| #{((@valor_energetico[0]/@ingesta_recomendada[0])*@porcion).round(2)*100}%"        
        #puts "(Kj/Kcal)         #{@valor_energetico[1]} Kcal  \t\t| #{(@valor_energetico[1]/@ingesta_recomendada[1]).round(2)*100}% \t\t| #{(@valor_energetico[1]*@porcion).round(2)}Kcal \t\t| #{((@valor_energetico[1]/@ingesta_recomendada[1])*@porcion).round(2)*100}%"
        #puts "Grasas de las     #{@grasa}g  \t\t| #{(@grasa/@ingesta_recomendada[2]).round(2)*100}%  \t\t| #{(@grasa*@porcion).round(2)} \t\t| #{((@grasa/@ingesta_recomendada[2])*@porcion).round(2)*100}%"
        #puts "cuales:"
        #puts "saturadas         #{@saturada}g  \t\t| #{(@saturada/@ingesta_recomendada[3]).round(2)*100}%  \t\t| #{(@saturada*@porcion).round(2)}g \t\t| #{((@saturada/@ingesta_recomendada[3])*@porcion).round(2)*100}%"
        #puts "Hidratos de       #{@hidratos}g  \t\t| #{(@hidratos/@ingesta_recomendada[4]).round(2)*100}%  \t\t| #{(@hidratos*@porcion).round(2)}g \t\t| #{((@hidratos/@ingesta_recomendada[4])*@porcion).round(2)*100}%"
        #puts "carbono de los "
        #puts "cuales: "
        #puts "Azucares:         #{@azucar}g  \t\t| #{(@azucar/@ingesta_recomendada[5]).round(2)*100}%  \t\t| #{(@azucar*@porcion).round(2)}g \t\t| #{((@azucar/@ingesta_recomendada[5])*@porcion).round(2)*100}%"
        #puts "Proteinas:        #{@proteinas}g  \t\t| #{(@proteinas/@ingesta_recomendada[6]).round(2)*100}%  \t\t| #{(@proteinas*@porcion).round(2)}g \t\t| #{((@proteinas/@ingesta_recomendada[6])*@porcion).round(2)*100}%"
        #puts "Sal:              #{@sal}g  \t\t| #{(@sal/@ingesta_recomendada[7]).round(2)*100}%  \t\t| #{(@proteinas*@porcion).round(2)} \t\t| #{((@sal/@ingesta_recomendada[7])*@porcion).round(2)*100}%"
        "#{@etiqueta}"
    end
    
end

#prueba = ValorEnergetico.new("Galletas",10.5,5.1,77.0,24.0,7.6,0.83,6.1)

#prueba.to_s