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
    
    it "Instancia de Individuo" do
      expect(@individuo1.instance_of?Individuo).to be(true)
    end
    
  end
end

describe Paciente do
  
  context "Pruebas de Paciente" do 
    
    before :all do
      @paciente1 = Paciente.new("Pepito","Rguez",100,1.85,30,"Hombre",[55.0,57.0],[60.0,63.0])
    end
    
    it "Comprobando la instancia del objeto" do 
      expect(@paciente1.instance_of?Paciente).to be(true)
    end
    
    it "Es de la clase Paciente"do 
      expect(@paciente1.class == Paciente).to eq(true)
    end
    
  end
  
end

end