Scenario:aluno matriculado em disciplinas com sucesso
 Given eu loguei com "João" e senha "123"
 And eu vejo as disciplinas disponíveis para matrícula
 And eu possuo os pre-requisitos para cursar "Lógica" e "Algoritmos"
 When eu seleciono  "Lógica" e "Algoritmos"
 And seleciono a opção de matrícula
 Then aparece "Lógica" e "Algoritmos" na coleção de disciplinas matriculadas 

Scenario: aluno não selecionou nenhuma disciplinas
 Given eu loguei com "João" e senha "123"
 And eu vejo as disciplinas disponíveis para matrícula
 When seleciono a opção de matricula sem selecionar nenhuma matéria
 Then nada acontece

Scenario: aluno não possui algum pre-requisito para pagar alguma cadeira
 Given eu loguei com "João" e senha "123"
 And eu vejo as disciplinas disponíveis para matrícula
 And eu não possuo os pre-requisitos para cursar "Lógica" 
 And eu possuo os pre-requisitos para cursar "Algoritmos"
 When eu seleciono  "Lógica" e "Algoritmos"
 And seleciono a opção de matrícula
 Then aparece uma mensagem de erro : Voce não possui os pre-requistos de "Lógica"
 And eu não sou matriculado em "Lógica"
 And aparece só "Algoritmos" na coleção de disciplinas matriculadas 