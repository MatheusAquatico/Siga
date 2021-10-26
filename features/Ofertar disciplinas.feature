Ofertar disciplinas

Scenario: Ofertando, com sucesso, uma disciplina chamada “Lógica”

	 
	And Vejo que o campo de disciplynas está vazio
	When Escolho adici0nar uma disciplina
	And Escolho “LógicA” e “Anjolina” 
	And  Confirmo minhas configurações
	Then Eu continuo na página de disciplinas
	And Eu consigo ver que a disciplina de “Lógica” dada pela professora “Anjolina” foi criada

Scenario: Ofertando, com sucesso, uma disciplina chamada “Lógica”
	Given Uma Professora chamada “Anjolina” ofertando uma disciplina chamada “Lógica”
	When O sistema recebe as informações da disciplina de “Lógica” dada por “Anjolina”
	Then O sistema armazena as informações e atualiza a lista de disciplinas ofertadas

modi 1