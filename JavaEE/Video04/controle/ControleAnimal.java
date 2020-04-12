package controle;

import dominio.Animal;

public class ControleAnimal {
	Animal a = new Animal();
	
	public void cadastrarAnimal(String nome, int idade, float peso, String especie) {
		a.setNome(nome);
		a.setIdade(idade);
		a.setPeso(peso);
		a.setEspecie(especie);
	}
}
