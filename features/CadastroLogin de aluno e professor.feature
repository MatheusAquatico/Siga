<<<<<<< HEAD
Cadastro aluno
Scenario: Cadastrando um novo aluno
	Given Estou na página de cadastro de aluno
	When Escolho cadastrar um novo aluno
	And Escolho “João” e “098.123.323-45” como dados de acesso
	And Escolho “12345” como senha
	And Confirmo minhas configurações
	Then A tela mostra a mensagem “Aluno cadastrado com sucesso” 
	And Volto para a página de cadastro

Scenario: Cadastrando um novo aluno
	Given Um aluno com nome “joão” e cpf “098.123.323-45”
	And Um aluno deu a senha “12345”
	When O sistema recebe as informações de cadastro do aluno “João” de cpf “098.123.323-45” com senha “12345”
	Then O sistema armazena as informações e atualiza a lista de alunos cadastrados

Cadastro professor
Scenario: Cadastrando um novo professor
	Given Estou na página de cadastro de professor
	When Escolho cadastrar um novo professor
	And Escolho “Marcelo” e “094.183.364-49” como dados de acesso
	And Escolho “12345” como senha
	And Confirmo minhas configurações
	Then A tela mostra a mensagem “Professor cadastrado com sucesso” 
	And Volto para a página de cadastro

Scenario: Cadastrando um novo professor
	Given Um professor com nome “Marcelo” e “094.183.364-49”
	And Um professor deu a senha “12345”
	When O sistema recebe as informações de cadastro do aluno “Marcelo” e “094.183.364-49” com senha “12345”
	Then O sistema armazena as informações e atualiza a lista de professores cadastrados


	

Login aluno
Scenario: Logando como um aluno
	Given Estou na página de Login de aluno
	When Escolho logar como um aluno
	And Escolho “João” e “098.123.323-45” como dados de acesso
	And Escolho “12345” como senha
	And Confirmo minhas informações
Then A tela mostra a mensagem “Aluno logado com sucesso” 
	And Vou para a página de inicial

Scenario: Logando como um aluno
	Given Um aluno com nome “joão” e cpf “098.123.323-45”
	And Um aluno deu a senha “12345”
	When O sistema recebe as informações de acesso do aluno “João” de cpf “098.123.323-45” com senha “12345”
	Then O sistema vai para o banco de dados dos alunos cadastrados e confere se o aluno “João” de cpf “098.123.323-45” consta nela
	And O sistema confere se a senha de acesso “12345” está associada com o aluno “João” de cpf “098.123.323-45”
	And O sistema permite o acesso do aluno “João” de cpf “098.123.323-45” ao servidor


Login Professor
Scenario: Logando como um professor
	Given Estou na página de Login de professor
	When Escolho logar como um professor
	And Escolho “Marcelo” e “094.183.364-49” como dados de acesso
	And Escolho “12345” como senha
	And Confirmo minhas informações
	Then A tela mostra a mensagem “Professor logado com sucesso” 
	And Vou para a página de inicial

Scenario: Logando como um professor
	Given Um professor com nome “Marcelo” e “094.183.364-49”
	And Um professor deu a senha “12345”
	When O sistema recebe as informações de acesso do professor “Marcelo” e “094.183.364-49” com senha “12345”
	Then O sistema vai para o banco de dados dos alunos cadastrados e confere se o professor “Marcelo” e “094.183.364-49” consta nela
	And O sistema confere se a senha de acesso “12345” está associada com o professor “Marcelo” e “094.183.364-49” 
	And O sistema permite o acesso do professor “Marcelo” e “094.183.364-49” ao servidor


=======

>>>>>>> 769739ee796aac365695cb3364e2cdfd4dc91855
