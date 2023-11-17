-- Contagem de Quantidade de Cursos
select count(*) as Quantidade_de_Cursos from Curso;

-- Pesquisa os Nomes das Disciplinas
select nome from Disciplina;
    
-- Pesquisa Nomes dos Alunos e Cursos
select c.nome as Nome_do_Curso, a.nome as Nome_do_Aluno
from Curso c
join AlunoCurso ac on c.idCurso = ac.idCurso
join Aluno a on ac.idAluno = a.idAluno
order by c.nome desc;

-- Cálculo da Média das Notas por Disciplina
select D.nome as Nome_da_Disciplina, avg (H.nota) as Media_das_Notas
from Disciplina D
join Historico H on D.idDisciplina = H.idDisciplina
group by D.nome;

-- Contagem de Quantidade de Alunos por Curso
select C.nome as Nome_do_Curso, count(AC.idAluno) as Quantidade_de_Alunos
from Curso C
left join AlunoCurso AC on C.idCurso = AC.idCurso
group by C.nome;
