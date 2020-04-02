package br.com.treinaweb.springmvc.dominios;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

public class Album {

	@NotEmpty(message="Nome obrigatório")
	private String nome;
	
	@NotNull(message="Ano de lançamento obrigatório")
	@Min(value=1990, message="A data de lançamento mínina é 1990.")
	@Max(value=2020, message="A data de lançamento máxima é 2020.")
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
