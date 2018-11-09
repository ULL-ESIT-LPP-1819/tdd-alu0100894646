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

end