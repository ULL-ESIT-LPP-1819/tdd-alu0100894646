#require 'lib/tdd/valor_energetico'

RSpec.describe Tdd do
  
  it "has a version number" do
    expect(Tdd::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end

describe ValorEnergetico do
      before :all  do
            @prueba1 = ValorEnergetico.new("Nutella",31.6,11.0,57.6,56.8,6.0,0.11,25.0,8)
          end
      context "Características de los alimentos" do 
          
          it "Tiene un nombre de etiqueta" do
            expect("Nutella").to eq(@prueba1.etiqueta)
          end
        
          it "Tiene un valor para las grasas " do 
            expect(31.6).to eq(@prueba1.grasa)
          end
        
          it "Tiene un valor para las grasas saturadas" do
            expect(11.0).to eq(@prueba1.saturada)
          end
        
          it "Tiene un valor para la cantidad de hidratos de carbono" do
            expect(57.6).to eq(@prueba1.hidratos)
          end
        
          it "Tiene un valor para la cantidad de azúcar " do
            expect(56.8).to eq(@prueba1.azucar)
          end
        
          it "Tiene un valor para las proteínas " do 
            expect(6.0).to eq(@prueba1.proteinas)
          end
        
          it "Tiene un valor para la cantidad de sal" do
            expect(0.11).to eq(@prueba1.sal)
          end
      end 
      
      context "Funciones de la clase ValorEnergetico"do 
        before :all do 
          @prueba1 = ValorEnergetico.new("Nutella",31.6,11.0,57.6,56.8,6.0,0.11,25.0,8)
        end
        it "Tiene un método para calcular el valor energético en kJ" do 
          @prueba1.calc_val_energetico_KJ
        end
      
        it "Calcula el valor energético de un alimento en kJ" do
          expect(2253.15).to eq(@prueba1.calc_val_energetico_KJ);
        end
        
        it "Tienhe un método para calcular el valor energetico en Kcal" do 
          @prueba1.calc_val_energetico_Kcal
        end
        
        it "Calcula el valor energetico para un alimento en Kcal"do
          expect(539.46).to eq(@prueba1.calc_val_energetico_Kcal  )
        end
        
        it "Tiene un método para obtener la etiqueta formateada (to_s)" do
          @prueba1.to_s
        end
      end
      
      context "Hacer la Clase Valor Energético comparable" do
        
        before :all do
          @magdalena = ValorEnergetico.new("Magdalena",31.6,11.0,57.6,56.8,6.0,0.11,25.0,8)
          @galletas = ValorEnergetico.new("Galletas",31.6,11.0,57.6,56.8,6.0,0.11,25.0,8)
          @leche = ValorEnergetico.new("Leche",31.6,11.0,57.6,56.8,6.0,0.11,25.0,8)
        end
      
        it "# Magadalena > Galletas " do 
          expect(@magdalena > @galletas).to eq(true)
        end
    
        it "# Galletas < Leche" do 
          expect(@galletas < @leche).to eq(true)
        end
        
        it " # Leche == Leche " do 
          expect(@leche == @leche).to eq(true)
        end
        
        it "# Galletas <= Leche " do 
          expect(@galletas <= @leche).to eq(true)
        end
        
        it "# Magdalena >= Leche" do 
          expect(@magdalena >= @leche).to eq(true)
        end
      end
      
      context "Práctica 11- Array de menus dietetico y lista de pacientes" do 
        
        before :each do
          @etiquetamenu1 = ValorEnergetico.new("Magdalena",23.1,3.2,41.6,20.30,5.4,0.11,25.0,8)
          @etiquetamenu2 = ValorEnergetico.new("Filete Ternera",2.9,0,0,0,21.85,0,250,1)
          @etiquetamenu3 = ValorEnergetico.new("Sandia",0.25,0.1,7.55,6.2,0.61,0,100,8)
          @etiquetamenu4 = ValorEnergetico.new("Arroz Blanco",0.4,0.1,38.0,0.1,3.6,0,135.0,1)
          @etiquetamenu5 = ValorEnergetico.new("Tallarines",2.1,0.4,70.4,1.3,13.3,0.5,230.0,1)
          @menu1 = [@etiquetamenu1,@etiquetamenu2,@etiquetamenu3]
          @menu2 = [@etiquetamenu1,@etiquetamenu2,@etiquetamenu4]
          @menu3 = [@etiquetamenu1,@etiquetamenu2,@etiquetamenu5]
          @menu4 = [@etiquetamenu2,@etiquetamenu3,@etiquetamenu4]
          @menu5 = [@etiquetamenu3,@etiquetamenu4,@etiquetamenu5]
          @menu6 = [@etiquetamenu1,@etiquetamenu1,@etiquetamenu1]
          @menu7 = [@etiquetamenu2,@etiquetamenu2,@etiquetamenu2]
          @menu8 = [@etiquetamenu3,@etiquetamenu3,@etiquetamenu3]
          @menu9 = [@etiquetamenu4,@etiquetamenu4,@etiquetamenu4]
          @menu10 = [@etiquetamenu5,@etiquetamenu5,@etiquetamenu5]
          @arraymenus = [@menu1,@menu2,@menu3,@menu4,@menu5,@menu6,@menu7,@menu8,@menu9,@menu10]
          
          @paciente1 = Paciente.new("Pepito","Rguez",150,1.82,30,"Hombre",[55.0,57.0],[60.0,63.0])
          @paciente2 = Paciente.new("Manoltio","Gafotas",100,1.75,60,"Hombre",[55.0,57.0],[60.0,63.0])
          @paciente3 = Paciente.new("Doraemon","El gato",85,1.65,17,"Hombre",[55.0,57.0],[60.0,63.0])
          @paciente4 = Paciente.new("Raul","Zamora",70,1.85,30,"Hombre",[55.0,57.0],[60.0,63.0])
          @paciente5 = Paciente.new("Manuel","Hdez",55,1.85,68,"Hombre",[55.0,57.0],[60.0,63.0])
          @paciente6 = Paciente.new("Pepito2","Rguez",130,1.80,16,"Hombre",[55.0,57.0],[60.0,63.0])
          @paciente7 = Paciente.new("Manoltio2","Gafotas",100,1.85,45,"Hombre",[55.0,57.0],[60.0,63.0])
          @paciente8 = Paciente.new("Doraemon2","El gato",85,1.95,39,"Hombre",[55.0,57.0],[60.0,63.0])
          @paciente9 = Paciente.new("Raul2","Zamora",70,1.85,32,"Hombre",[55.0,57.0],[60.0,63.0])
          @paciente10 = Paciente.new("Manuel2","Hdez",55,1.65,20,"Hombre",[55.0,57.0],[60.0,63.0])
          
          @lista_paciente = Dll.new();
          @lista_paciente.insert_tail(@paciente1)
          @lista_paciente.insert_tail(@paciente2)
          @lista_paciente.insert_tail(@paciente3)
          @lista_paciente.insert_tail(@paciente4)
          @lista_paciente.insert_tail(@paciente5)
          @lista_paciente.insert_tail(@paciente6)
          @lista_paciente.insert_tail(@paciente7)
          @lista_paciente.insert_tail(@paciente8)
          @lista_paciente.insert_tail(@paciente9)
          @lista_paciente.insert_tail(@paciente10)
        end
        
        it "Array de elementos ordenador usando bucle for"do 
            
            Benchmark.bm do |x|
              
            x.report("Array con for") {
            @resultado = [@menu1]
            
            for i in 0..9 do 
              
              @kcal = @arraymenus[i].collect{|y| y.calc_val_energetico_Kcal}.reduce(:+)
              
              for j in 0..(@resultado.length-1) do 
                
                @tmp = @resultado[j].collect{|y| y.calc_val_energetico_Kcal}.reduce(:+)
                
                if @kcal < @tmp
                  @resultado.insert(j,@arraymenus[i])
                  break
                end
                
                if j == (@resultado.length-1)
                  @resultado.insert(j,@arraymenus[i])
                end
              end
            end
              
            }end
            
            #for @i in 0..9
            #  puts @resultado[@i].collect{|y| y.calc_val_energetico_Kcal}.reduce(:+)
            #end
        end
      
        it "Lista de individuos usando bucle for" do 
            
            Benchmark.bm do |x|
              
            x.report("Lista con for") {
              @resultado = [@paciente1]
              @gasto = 0.0
        
              for i in 0..9 do  
                
                @node = @lista_paciente.get_head.value
                @gasto = @node.gasto_total("Ligera")
                
                for j in 0..(@resultado.length-1) do
                  
                  @tmp = @resultado[j].gasto_total("Ligera")
                  
                  if @gasto < @tmp
                    @resultado.insert(j,@node)
                    break
                  end
                  
                  if j ==(@resultado.length-1)
                    @resultado.insert(j,@node)
                  end
                end
                
              end
            }end
            #for @i in 0..9
            #  puts @resultado[@i].gasto_total("Ligera")
            #end
            
        end
          
        it "Array de elementos ordenados usando each " do
          
          Benchmark.bm do |x|
              
            x.report("Array con each") {
              @resultado = [@menu1]
              
              (0..9).each do |i|
                
                @kcal = @arraymenus[i].collect{|y| y.calc_val_energetico_Kcal}.reduce(:+)
                
                (0..(@resultado.length-1)).each do |j|
                  
                  @tmp = @resultado[j].collect{|y| y.calc_val_energetico_Kcal}.reduce(:+)
                  
                  if @kcal < @tmp
                    @resultado.insert(j,@arraymenus[i])
                    break
                  end
                  
                  if j == (@resultado.length-1)
                    @resultado.insert(j,@arraymenus[i])
                  end
                end
              end
            }end 
            #for @i in 0..9
            #  puts @resultado[@i].collect{|y| y.calc_val_energetico_Kcal}.reduce(:+)
            #end
            
        end
          
          
        it "Lista de individuos usando each "do 
          Benchmark.bm do |x|
              
            x.report("Lista con each") {
              @resultado = [@paciente1]
              @gasto = 0.0
        
              (0..9).each do |i|  
                
                @node = @lista_paciente.get_head.value
                @gasto = @node.gasto_total("Ligera")
                
                (0..(@resultado.length-1)).each do |j|
                  
                  @tmp = @resultado[j].gasto_total("Ligera")
                  
                  if @gasto < @tmp
                    @resultado.insert(j,@node)
                    break
                  end
                  
                  if j ==(@resultado.length-1)
                    @resultado.insert(j,@node)
                  end
                end
                
              end
            }end
            #for @i in 0..9
            #  puts @resultado[@i].gasto_total("Ligera")
            #end
        end
        
        it "Ordenando el array de menus usando el sort" do 
          Benchmark.bm do |k|
              
            k.report("Array con sort!") {
              @resultado = @arraymenus.sort!{ |x,y| x.collect{|i| i.calc_val_energetico_Kcal}.reduce(:+) <=> y.collect{|i| i.calc_val_energetico_Kcal}.reduce(:+)}
          }end
          #for @i in 0..9
          #    puts @resultado[@i].collect{|y| y.calc_val_energetico_Kcal}.reduce(:+)
          #end
        end
        
        it "Ordenando la lista con el sort" do 
          Benchmark.bm do |k|
              
            k.report("Lista con sort") {
          @resultado = @lista_paciente.sort{|x,y| x.gasto_total("Ligera") <=> y.gasto_total("Ligera")}
            }end
          #for @i in 0..9
          #    puts @resultado[@i].gasto_total("Ligera")
          #end
        end
        
        end
      end

describe Dll do 
  
  context "Pruebas del nodo" do
    
    nodo_lista = Node.new(0,nil,nil)
    
    it "Tiene un valor " do 
      expect(0).to eq(nodo_lista.value)
    end
    
    it "Tiene un next" do 
      expect(nil).to eq(nodo_lista.next)
    end
    
    it "Tiene un prev" do
      expect(nil).to eq(nodo_lista.next)
    end
    
  end
  
  context "Pruebas de la clase Lista" do 
    
    lista_prueba = Dll.new()
    
    it "Tiene un head" do 
      expect(nil).to eq(lista_prueba.head)
    end
    
    it "Tiene un tail" do
      expect(nil).to eq(lista_prueba.tail)
    end
    
    it "Tiene un método para insertar por el head" do
      lista_prueba.insert_head(10)
      lista_prueba.insert_head(5)
      expect(lista_prueba.head.value).to eq(5)
    end
    
    it "Tiene un método para insertar por el tail" do 
      lista_prueba.insert_tail(1)
      expect(lista_prueba.tail.value).to eq(1)
    end
    
    it "Tiene un método para extraer por el head" do
      lista_prueba.insert_head(1)
      lista_prueba.insert_head(2)
      expect(lista_prueba.get_head.value).to eq(2)
    end
    
    it "Tiene un método para extraer por la cola" do 
      lista_prueba.insert_head(1)
      lista_prueba.insert_head(2)
      expect(lista_prueba.get_tail.value).to eq(1)
    end
    
    it "Tiene un método para ver si la lista esta vacia"do
      expect(lista_prueba.empty?).to eq(false)
    end
    
  end
  
  context "Pruebas de la sal"do
    
    before :all do
      @dll_list = Dll.new()
      @etiqueta1 = ValorEnergetico.new("Nutella",31.6,11.0,57.6,56.8,6.0,0.11,25.0,8)
      @etiqueta2 = ValorEnergetico.new("Galletas",31.6,11.0,57.6,56.8,6.0,1.0,25.0,8)
      @etiqueta3 = ValorEnergetico.new("Lomo",31.6,11.0,57.6,56.8,6.0,2.11,25.0,8)
      @etiqueta4 = ValorEnergetico.new("Mantequilla",31.6,11.0,57.6,56.8,6.0,8.11,25.0,8)
      @etiqueta5 = ValorEnergetico.new("Pistachos",31.6,11.0,57.6,56.8,6.0,10.11,25.0,8)
      @dll_list.insert_head(@etiqueta1)
      @dll_list.insert_tail(@etiqueta2)
      @dll_list.insert_tail(@etiqueta3)
      @dll_list.insert_tail(@etiqueta4)
      @dll_list.insert_tail(@etiqueta5)
    end
    
    it "Etiqueta tiene un método que te devuelve su cantidad de sal" do
      expect(@etiqueta1.get_salt).to eq("Bajo")
    end
    
    it "Prueba del to_S" do 
      #@dll_list.to_s
      #actual = @dll_list.head
      #while actual != nil
      #  puts actual.value.get_salt
      #  actual = actual.next
      #end
    end
    
  end
  
  context "Haciendo la clase Lista enumerable" do 
    
    context "Lista de Etiquetas" do 
      
      before :each do 
        @dll_list = Dll.new()
        @etiqueta1 = ValorEnergetico.new("Nutella",31.6,11.0,57.6,56.8,16.0,0.11,25.0,8)
        @etiqueta2 = ValorEnergetico.new("Galletas",31.6,11.0,57.6,56.8,4.0,1.0,25.0,8)
        @etiqueta3 = ValorEnergetico.new("Lomo",31.6,11.0,57.6,56.8,8.0,2.11,25.0,8)
        @etiqueta4 = ValorEnergetico.new("Mantequilla",31.6,11.0,57.6,56.8,1.0,8.11,25.0,8)
        @etiqueta5 = ValorEnergetico.new("Pistachos",31.6,11.0,57.6,56.8,5.0,10.11,25.0,8)
        #@dll_list.insert_head(@etiqueta1)
        #@dll_list.insert_tail(@etiqueta2)
        #@dll_list.insert_tail(@etiqueta3)
        #@dll_list.insert_tail(@etiqueta4)
        #@dll_list.insert_tail(@etiqueta5)
      end
    
     it "Comprobando el metodo del collect" do 
       @dll_list.insert_tail(@etiqueta1)
       @dll_list.insert_tail(@etiqueta2)
       @dll_list.insert_tail(@etiqueta3)
       
       #expect(@dll_list.map{|i| i.to_s}).to eq(["Nutella","Galletas","Lomo"])
       expect(@dll_list.collect{|i| i.to_s}).to eq(["Nutella","Galletas","Lomo"])
     end
     
     it "Comprobando el metodo select" do
       @dll_list.insert_tail(@etiqueta1)
       @dll_list.insert_tail(@etiqueta2)
       @dll_list.insert_tail(@etiqueta3)
       #puts @dll_list.select{|i| i.etiqueta.size < 5}
       expect(@dll_list.select{|i| i.etiqueta.size < 5}).to eq([@etiqueta3])
     end
     
     it "comprobando el metodo max " do 
       @dll_list.insert_tail(@etiqueta1)
       @dll_list.insert_tail(@etiqueta2)
       expect(@dll_list.max).to eq(@etiqueta1)
     end
     
     it "Comprobando el metodo min" do 
       @dll_list.insert_tail(@etiqueta1)
       @dll_list.insert_tail(@etiqueta2)
       expect(@dll_list.min).to eq(@etiqueta2)
     end
     
     it "Comprobando el metodo sort" do 
       @dll_list.insert_tail(@etiqueta1)
       @dll_list.insert_tail(@etiqueta2)
       @dll_list.insert_tail(@etiqueta3)
       expect(@dll_list.sort{ |a,b| b<=>a}).to eq([@etiqueta1,@etiqueta3,@etiqueta2])
     end
     
    end
    
    context "Lista de Individuos" do 
      
      before :each do 
        @lista = Dll.new()
        @jose = Individuo.new("Jose","Rodriguez")
        @francisco = Individuo.new("Francisco","Hernández")
        @pepito = Individuo.new("Pepito","Perez")
      end
      
      it "Comprobando el metodo del collect" do 
        @lista.insert_tail(@jose)
        @lista.insert_tail(@francisco)
        @lista.insert_tail(@pepito)
        expect(@lista.collect{ |i| i.to_s}).to eq(["Jose Rodriguez","Francisco Hernández","Pepito Perez"])
      end
      
      it "Comprobando el metodo select" do 
        @lista.insert_tail(@jose)
        @lista.insert_tail(@francisco)
        @lista.insert_tail(@pepito)
        expect(@lista.select{|i| i.apellido.size > 6}).to eq([@jose,@francisco])
      end
      
      it "Comprobando el metodo max " do 
        @lista.insert_tail(@jose)
        @lista.insert_tail(@francisco)
        expect(@lista.max).to eq(@jose)
      end
      
      it "Comprobando el metodo min " do 
        @lista.insert_tail(@jose)
        @lista.insert_tail(@francisco)
        expect(@lista.min).to eq(@francisco)
      end
      
      it "Comprobando el metodo sort" do 
        @lista.insert_tail(@jose)
        @lista.insert_tail(@francisco)
        @lista.insert_tail(@pepito)
        expect(@lista.sort).to eq([@francisco,@jose,@pepito])
      end
    end
    
  end
  
end

describe Individuo do
  
  context "Medidas Antropométricas " do
    
    before :all do 
      @individuo1 =  Individuo.new("Pepito","Rodriguez");
    end
    
    it "Tiene un nombre" do
      expect(@individuo1.nombre).to eq("Pepito")
    end
    
    
    it "tiene un apellido"do
      expect(@individuo1.apellido).to eq("Rodriguez")
    end
    
    it "Probando el to_s " do 
      expect(@individuo1.to_s.is_a?String).to eq(true)
    end
    
    it "Instancia de Individuo" do
      expect(@individuo1.instance_of?Individuo).to be(true)
    end
    
    it "Tipo de la clase " do 
      expect(@individuo1.class == Individuo).to be(true)
    end
    
    it "Pertenece a una Jerarquia con Object" do
      expect(@individuo1.is_a?Object).to eq(true)
    end
    
    it "Pertenece a una Jerarquia con BasicObject" do 
      expect(@individuo1.is_a?BasicObject).to eq(true)
    end
    
  end
  
  context "Haciendo la clase Individuo Comparable" do 
    
    before :all do 
      @persona1 = Individuo.new("Jose","Rodriguez")
      @persona2 = Individuo.new("Francisco","Hernandez")
      @persona3 = Individuo.new("Maria","Pilar")
    end
    
    it "# Jose < Francisco" do 
      expect(@persona1<@persona2).to eq(false)
    end
    
    it "# Pilar > Jose" do 
      expect(@persona3>@persona1).to eq(true)
    end
    
    it "# Francisco == Francisco" do 
      expect(@persona2 == @persona2).to eq(true)
    end
    
    it "# Jose <= Pilar" do 
      expect(@persona1<=@persona3).to eq(true)
    end
    
    it "# Francisco >= Pilar" do
      expect(@persona2>=@persona3).to eq(false)
    end
  end
end

describe Paciente do
  
  before :all do
      @paciente1 = Paciente.new("Pepito","Rguez",100,185,30,"Hombre",[55.0,57.0],[60.0,63.0])
  end
  
  context "Comprobando la instancia y clase a la que pertence Paciente" do 
  
    it "Comprobando la instancia del objeto" do 
      expect(@paciente1.instance_of?Paciente).to be(true)
    end
    
    it "Es de la clase Paciente"do 
      expect(@paciente1.class == Paciente).to eq(true)
    end
    
    it "No es de la clase Individuo" do
      expect(@paciente1.class != Individuo). to eq(true)
    end
    
    it "No es una instancia de  la clase Object" do
      expect(@paciente1.instance_of?Object). to eq(false)
    end
    
    it "no es una instancia de la clase BasicObject" do
      expect(@paciente1.instance_of?BasicObject).to eq(false)
    end
  end
  
  context "Comprobando la jerarquía de la clase Paciente" do
    
    it "Paciente pertenece a la jerarquia de Individuo" do
      expect(@paciente1.is_a?Individuo).to eq(true)
    end
    
    it "Paciente pertenece a la jerarquia de Object" do
      expect(@paciente1.is_a?Object).to eq(true)
    end
    
    it "Paciente pertenece a la jerarquia de BasicObject" do
      expect(@paciente1.is_a?BasicObject).to eq(true)
    end
    
    it "Probando el to_s " do 
      expect(@paciente1.to_s.is_a?String).to eq(true)
    end
    
    
  end
  
  context "Haciendo la prueba de la clasificación de individuos" do 
    
    before :all do
      
      @lista = Dll.new()
      @paciente1 = Paciente.new("Pepito","Rguez",150,1.85,30,"Hombre",[55.0,57.0],[60.0,63.0])
      @paciente2 = Paciente.new("Manoltio","Gafotas",100,1.85,30,"Hombre",[55.0,57.0],[60.0,63.0])
      @paciente3 = Paciente.new("Doraemon","El gato",85,1.85,30,"Hombre",[55.0,57.0],[60.0,63.0])
      @paciente4 = Paciente.new("Raul","Zamora",70,1.85,30,"Hombre",[55.0,57.0],[60.0,63.0])
      @paciente5 = Paciente.new("Manuel","Hdez",55,1.85,30,"Hombre",[55.0,57.0],[60.0,63.0])
      @lista.insert_head(@paciente1)
      @lista.insert_head(@paciente2)
      @lista.insert_head(@paciente3)
      @lista.insert_head(@paciente4)
      @lista.insert_head(@paciente5)
    end
    
    it "Comprobando si tiene un método para clasificar" do
      @aux = @lista.head
      expect(@aux.value.imc_calc).to eq("Delgado")
    end
    
    it "Prueba de la clasificación " do 
      @aux = @lista.head
      expect(@aux.value.imc_calc).to eq("Delgado")
      @aux = @aux.next
      expect(@aux.value.imc_calc).to eq("Aceptable")
      @aux = @aux.next
      expect(@aux.value.imc_calc).to eq("Aceptable")
      @aux = @aux.next
      expect(@aux.value.imc_calc).to eq("Sobrepeso")
      @aux = @aux.next
      expect(@aux.value.imc_calc).to eq("Obesidad")
      
    end
    
  end
  
  context " Pruebas para las funciones del menu dietetico" do 
  
    it "Tiene un método para calcular el peso teórico ideal " do 
      expect(@paciente1.peso_ideal).to eq(76.25)
    end
    
    it "Tiene un método para calcular el gasto energetico basal según el sexo" do 
      expect(@paciente1.gasto_energetico_basal).to eq(2011.25)
    end
    
    it "Tiene un método para calcular el efecto termógeno" do 
      expect(@paciente1.efecto_termogeno).to eq(201.13)
    end
    
    it "Tiene una variable que define el factor de actividad física" do 
      expect(@paciente1.actividad_fisica("Ligera")).to eq(0.12)
    end
    
    it "Tiene un método para calcular el gasto de la actividad física" do 
      expect(@paciente1.gasto_act_fisica("Moderada")).to eq(543.04)
    end
    
    it "Tiene un método para el gasto energético Total" do 
      expect(@paciente1.gasto_total("Reposo")).to eq(2212.38)
    end
  end 
  
  context "Pruebas para el menu dietetico" do 
    
    before :each do 
      @paciente1 =  Paciente.new("Pepito","Rguez",100,185,30,"Hombre",[55.0,57.0],[60.0,63.0])
      @etiquetamenu1 = ValorEnergetico.new("Magdalena",23.1,3.2,41.6,20.30,5.4,0.11,25.0,8)
      @etiquetamenu2 = ValorEnergetico.new("Filete Ternera",2.9,0,0,0,21.85,0,250,1)
      @etiquetamenu3 = ValorEnergetico.new("Sandia",0.25,0.1,7.55,6.2,0.61,0,100,8)
      @etiquetamenu4 = ValorEnergetico.new("Arroz Blanco",0.4,0.1,38.0,0.1,3.6,0,135.0,1)
      @etiquetamenu5 = ValorEnergetico.new("Tallarines",2.1,0.4,70.4,1.3,13.3,0.5,230.0,1)
      @menu1 = [@etiquetamenu1,@etiquetamenu2,@etiquetamenu3]
      @menu2 = [@etiquetamenu1,@etiquetamenu2,@etiquetamenu4]
      @menu3 = [@etiquetamenu1,@etiquetamenu2,@etiquetamenu5]
      @menu4 = [@etiquetamenu2,@etiquetamenu3,@etiquetamenu4]
      @menu5 = [@etiquetamenu3,@etiquetamenu4,@etiquetamenu5]
      @gasto_paciente1 = @paciente1.gasto_total("Ligera")
    end
    
    
    it "Prueba para el menu 1" do 
      expect(@menu1.collect{|i| i.calc_val_energetico_Kcal}.reduce(:+)).to be < @gasto_paciente1
    end
    
    it "Prueba para el menu 2"do 
      expect(@menu2.collect{|i| i.calc_val_energetico_Kcal}.reduce(:+)).to be < @gasto_paciente1
    end
    
    it "Prueba para el menu 3"do 
      expect(@menu3.collect{|i| i.calc_val_energetico_Kcal}.reduce(:+)).to be < @gasto_paciente1
    end
    
    it "Prueba para el menu 4"do 
      expect(@menu4.collect{|i| i.calc_val_energetico_Kcal}.reduce(:+)).to be < @gasto_paciente1
    end
    
    it "Prueba para el menu 5"do 
      expect(@menu5.collect{|i| i.calc_val_energetico_Kcal}.reduce(:+)).to be < @gasto_paciente1
    end
    
  end
end

end