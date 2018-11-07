#require 'lib/tdd/valor_energetico'

RSpec.describe Tdd do
  
  
  
  it "has a version number" do
    expect(Tdd::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end

describe ValorEnergetico do
  prueba1 = ValorEnergetico.new("Magdalena")


  it "Tiene un nombre de etiqueta" do
    expect("Magdalena").to eq(prueba1.etiqueta)
    #prueba1 = ValorEnergetico.new("Magdalena")
  end

end
end