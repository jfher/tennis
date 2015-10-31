Feature: Tennis

Scenario: Inicia la partida
Given estoy en la pagina de inicio
When presiona el boton "score"
Then deberia ver "0 - 0"

Scenario: Mostrar un valor distinto a 0
Given estoy en la pagina de inicio
When presiona el boton "anota 1"
Then deberia ver "15 - 0"

Scenario: Mostrar un valor distinto a 0
Given estoy en la pagina de inicio
When presiona el boton "anota 2"
Then deberia ver "0 - 15"
