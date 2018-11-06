#require 'lib/valor_energetico'

RSpec.describe Tdd do
  
  #prueba1 = ValorEnergetico.new("Magdalena")
  
  it "has a version number" do
    expect(Tdd::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end
  
  it "Tiene un nombre de etiqueta" do
    expect("Magdalena").to eq(prueba1.valor)
  end
end
