#require 'lib/tdd/valor_energetico'

RSpec.describe Tdd do
  
  
  
  it "has a version number" do
    expect(Tdd::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end

describe ValorEnergetico do
  
  prueba1 = ValorEnergetico.new("Nutella",31.6,11.0,57.6,56.8,6.0,0.11,25.0,8)
  
  
  context "Características de los alimentos" do 
    
    it "Tiene un nombre de etiqueta" do
      expect("Nutella").to eq(prueba1.etiqueta)
    end
    
    it "Tiene un valor para las grasas " do 
      expect(31.6).to eq(prueba1.grasa)
    end
    
    it "Tiene un valor para las grasas saturadas" do
      expect(11.0).to eq(prueba1.saturada)
    end
    
    it "Tiene un valor para la cantidad de hidratos de carbono" do
      expect(57.6).to eq(prueba1.hidratos)
    end
    
    it "Tiene un valor para la cantidad de azúcar " do
      expect(56.8).to eq(prueba1.azucar)
    end
    
    it "Tiene un valor para las proteínas " do 
      expect(6.0).to eq(prueba1.proteinas)
    end
    
    it "Tiene un valor para la cantidad de sal" do
      expect(0.11).to eq(prueba1.sal)
    end
  end 
  
  context "Funciones de la clase ValorEnergetico"do 
    
    it "Tiene un método para calcular el valor energético en kJ" do 
      prueba1.calc_val_energetico_KJ
    end
  
    it "Calcula el valor energético de un alimento en kJ" do
      expect(2253.15).to eq(prueba1.calc_val_energetico_KJ);
    end
    
    it "Tienhe un método para calcular el valor energetico en Kcal" do 
      prueba1.calc_val_energetico_Kcal
    end
    
    it "Calcula el valor energetico para un alimento en Kcal"do
      expect(539.46).to eq(prueba1.calc_val_energetico_Kcal  )
    end
    
    it "Tiene un método para obtener la etiqueta formateada (to_s)" do
      prueba1.to_s
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
  end
end

describe Paciente do
  
  before :all do
      @paciente1 = Paciente.new("Pepito","Rguez",100,1.85,30,"Hombre",[55.0,57.0],[60.0,63.0])
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
  
end

end