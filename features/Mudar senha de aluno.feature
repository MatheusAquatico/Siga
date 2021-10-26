Mudar senha de aluno 
Scenario: Mudar senha de aluno
	Given Estou na página de perfil de aluno
	When Escolho mudar de senha
	And Escolho “João” “Marcelo” e “094.183.364-49” como dados de acesso
	And Escolho “12345” como senha antiga 
	And Escolho “67890” como nova senha
	Then A tela mostra a mensagem “Senha mudada com sucesso” 
	And Volto para a página de perfil de aluno

Scenario: Mudar senha de aluno
 	Given Um aluno com nome “João” e cpf “098.123.323-45”
	And Um aluno de senha “12345”
	When O sistema recebe a senha antiga “12345” do aluno “João” e cpf “098.123.323-45” 
	And Recebe a nova senha “67890” do aluno “João” e cpf “098.123.323-45”
	Then O sistema vai para o banco de dados dos alunos cadastrados e confere se o aluno “João” de cpf “098.123.323-45” consta nela
	And O sistema confere se a senha de acesso “12345” está associada com o aluno “João” de cpf “098.123.323-45”
	And O Sistema atualiza a senha associada com o aluno “João” de cpf “098.123.323-45”
