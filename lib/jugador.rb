class Jugador
attr_accessor :puntos
  def initialize
    @puntos = 0
  end

  def anotacion
    @puntos += 1
  end

  def empate
    @puntos -= 1
  end

  def score
    if @puntos == 0
      '0'
    elsif @puntos == 1
      '15'
    elsif @puntos == 2
      '30'
    elsif @puntos == 3
      '40'
    else
      'adv'
    end
  end

end
