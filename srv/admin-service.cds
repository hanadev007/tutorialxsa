using com.saphanadev.tutorialxsa as tutorialxsa from '../db/data-model';

service AdminService{
	entity Alunos as projection on tutorialxsa.Alunos;
	entity Cursos as projection on tutorialxsa.Cursos;
	entity Matriculas as projection on tutorialxsa.Matriculas;
	entity Turmas as projection on tutorialxsa.Turmas;
}
