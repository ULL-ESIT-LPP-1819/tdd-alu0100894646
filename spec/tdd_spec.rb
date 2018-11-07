#require 'lib/tdd/valor_energetico'

RSpec.describe Tdd do
  
  
  
  it "has a version number" do
    expect(Tdd::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end

describe ValorEnergetico do
  prueba1 = ValorEnergetico.new("Magdalena",10.0,3.0,15.0,5.0,7.0,1.0)

  context "Características de los alimentos" do 
    
    it "Tiene un nombre de etiqueta" do
      expect("Magdalena").to eq(prueba1.etiqueta)
    end
    
    it "Tiene un valor para las grasas " do 
      expect(10).to eq(prueba1.grasa)
    end
    
    it "Tiene un valor para las grasas saturadas" do
      expect(3).to eq(prueba1.saturada)
    end
    
    it "Tiene un valor para la cantidad de hidratos de carbono" do
      expect(15).to eq(prueba1.hidratos)
    end
    
    it "Tiene un valor para la cantidad de azúcar " do
      expect(5).to eq(prueba1.azucar)
    end
    
    it "Tiene un valor para las proteínas " do 
      expect(7).to eq(prueba1.proteinas)
    end
    
    it "Tiene un valor para la cantidad de sal" do
      expect(1).to eq(prueba1.sal)
    end
  end 
  
  context "Funciones de la clase ValorEnergetico"do 
    
    it "Tiene un método para calcular el valor energético en kJ" do 
      prueba1.calc_val_energetico_KJ
    end
  
    it "Calcula el valor energético de un alimento en kJ" do
      expect(880.0).to eq(prueba1.calc_val_energetico_KJ);
    end
    
    it "Tienhe un método para calcular el valor energetico en Kcal" do 
      prueba1.cal_val_energetico_Kcal
    end
    
  end
  
end

end