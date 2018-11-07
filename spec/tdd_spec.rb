#require 'lib/tdd/valor_energetico'

RSpec.describe Tdd do
  
  
  
  it "has a version number" do
    expect(Tdd::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end

describe ValorEnergetico do
  prueba1 = ValorEnergetico.new("Magdalena",10,3,15,5,7,1)

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
  
  it "Tiene un método para calcular el valor energético" do 
    prueba1.calc_val_energetico
  end
  
end

end