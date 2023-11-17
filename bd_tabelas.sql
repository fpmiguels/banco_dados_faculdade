create database faculdade;
show databases;
use faculdade;
select database();

create table Aluno (
  idAluno int not null,
  matricula varchar (10) not null,
  nome varchar (50) not null,
  primary key (idAluno)
);

create table Disciplina (
  idDisciplina int not null,
  nome varchar (50) not null,
  cargaHoraria int not null,
  primary key (idDisciplina)
);

create table Curso (
  idCurso int not null,
  nome varchar (50) not null,
  primary key (idCurso)
);

create table Grade (
  idGrade int not null,
  idCurso int not null,
  ano int not null,
  cargaHorariaTotal int not null,
  primary key (idGrade),
  foreign key (idCurso) references Curso (idCurso)
);

create table Historico (
  idAluno int not null,
  idDisciplina int not null,
  nota float not null,
  dataHistorico date not null,
  foreign key (idAluno) references Aluno (idAluno),
  foreign key (idDisciplina) references Disciplina (idDisciplina)
);

create table AlunoCurso (
  idAluno int not null,
  idCurso int not null,
  anoEntrada int not null,
  foreign key (idAluno) references Aluno (idAluno),
  foreign key (idCurso) references Curso (idCurso)
);

create table GradeDisciplina (
  idGrade int not null,
  idDisciplina int not null,
  foreign key (idGrade) references Grade (idGrade),
  foreign key (idDisciplina) references Disciplina (idDisciplina)
);
