require('tennis')
describe Tennis do
  before(:each) do
    @match = Tennis.new
  end

context "Inicio del juego" do
  it "inicia el juego debe estar 0 - 0" do
    expect(@match.score).to eq "0 - 0"
  end
end

context "Anotacion " do
  it "si un jugador anota su puntaje debe ser diferente a 0" do
    @match.anotacion(1)
    expect(@match.score_jugador(1)).not_to eq "0"
  end
end

context "Deuce (Igualados) " do
  it "si ambos jugadores estan empatados en 40 puntos el puntaje debe ser deuce (igualados)" do
    @match.anotacion(1)
    @match.anotacion(1)
    @match.anotacion(1)

    @match.anotacion(2)
    @match.anotacion(2)
    @match.anotacion(2)
    expect(@match.score).to eq 'deuce'
  end

  it "el juego vuelve a deuce si un jugador tiene advantaje y su adversario empata el juego" do
    @match.anotacion(1) #15-0
    @match.anotacion(2) #15-15
    @match.anotacion(1) #30-15
    @match.anotacion(2) #30-30
    @match.anotacion(1) #40-30
    @match.anotacion(2) #40-40 deuce
    @match.anotacion(1) #adv-40
    @match.anotacion(2) #40-40 deuce
    expect(@match.score).to eq 'deuce'
  end
end

context "Advantaje (Aventajado) " do
  it "si el juego esta en deuce el proximo jugador en anotar debe estar en advantaje" do
    @match.anotacion(1)
    @match.anotacion(1)
    @match.anotacion(1)
    @match.anotacion(1)

    @match.anotacion(2)
    @match.anotacion(2)
    @match.anotacion(2)
    expect(@match.score).to eq ('advantaje jugador_1')
  end
end
context "Ganador de Juego" do
  it "un jugador gana el juego si obtiene una ventaja de 2 puntos sobre su oponente estando su score en 30" do
    @match.anotacion(1) #15-0
    @match.anotacion(2) #15-15
    @match.anotacion(1) #30-15
    @match.anotacion(2) #30-30
    @match.anotacion(1) #40-30
    @match.anotacion(1) #winner-30

    expect(@match.score).to eq ('winner jugador_1')
  end

  it "un jugador gana el juego si estando en advantaje anota antes que su adversario" do
    @match.anotacion(1) #15-0
    @match.anotacion(2) #15-15
    @match.anotacion(1) #30-15
    @match.anotacion(2) #30-30
    @match.anotacion(1) #40-30
    @match.anotacion(2) #40-40 deuce
    @match.anotacion(1) #adv-40
    @match.anotacion(1) #winner-40

    expect(@match.score).to eq ('winner jugador_1')
  end
end
end
