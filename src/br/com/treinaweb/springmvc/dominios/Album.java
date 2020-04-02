package br.com.treinaweb.springmvc.dominios;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

public class Album {

	@NotEmpty(message="Nome obrigat�rio")
	private String nome;
	
	@NotNull(message="Ano de lan�amento obrigat�rio")
	@Min(value=1990, message="A data de lan�amento m�nina � 1990.")
	@Max(value=2020, message="A data de lan�amento m�xima � 2020.")
	private int anoDeLancamento;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public int getAnoDeLancamento() {
		return anoDeLancamento;
	}

	public void setAnoDeLancamento(int anoDeLancamento) {
		this.anoDeLancamento = anoDeLancamento;
	}

}
