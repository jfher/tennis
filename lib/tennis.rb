require('./lib/jugador')
class Tennis

  def initialize
    @jugador_1 = Jugador.new
    @jugador_2 = Jugador.new
  end

  def score
      if(@jugador_1.score == "40" && @jugador_2.score == "40")
        'deuce'
      elsif (@jugador_1.puntos == 4 && @jugador_2.score == "40")
        'advantaje jugador_1'
      elsif (@jugador_2.puntos == 4 && @jugador_1.score == "40")
        'advantaje jugador_2'
      elsif ((@jugador_1.puntos >= 4 && @jugador_2.puntos < 3) || (@jugador_1.score == "adv"  && @jugador_2.score == "40"))
        'winner jugador_1'
      elsif ((@jugador_2.puntos >= 4 && @jugador_1.puntos < 3) || (@jugador_2.score == "adv"  && @jugador_1.score == "40"))
        'winner jugador_2'
      elsif (@jugador_2.puntos == 4 && @jugador_1.puntos == 4)
        @jugador_2.empate
        @jugador_1.empate
        'deuce'
      else
        "#{@jugador_1.score} - #{@jugador_2.score}"
      end
  end


  def score_jugador(jugador)
    if jugador == 1
      @jugador_1.score
    else
      @jugador_2.score
    end
  end

  def anotacion(jugador)
    if jugador == 1
      @jugador_1.anotacion
    else
      @jugador_2.anotacion
    end
  end



end
