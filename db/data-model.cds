namespace com.saphanadev.tutorialxsa;


entity Alunos {
	key id: Integer;
	    nome: String(100) not null;
	    dataNascimento: Date not null;
	    sexo: String(1) enum{ MASCULINO = 'M'; FEMININO = 'F'; } not null;
	    email: String(50) not null;
	    matriculas: Association to many Matriculas on matriculas.aluno = $self;
}

entity Cursos{
	key id: Integer;
	    nome: String(255) not null;
	    cagaHoraria: Integer not null;
	    
}

entity Matriculas{
	key turma: Association to Turmas;
	key aluno: Association to Alunos;
}

entity Turmas{
	key id: Integer;
    	curso: Association to Cursos;
    	matriculas: Association to many Matriculas on matriculas.turma = $self;
		nome: String(10) not null;
}
