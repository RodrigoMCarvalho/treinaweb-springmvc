package br.com.treinaweb.springmvc.dominios;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.validator.constraints.NotEmpty;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table(name = "alb_albuns")
public class Album implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "alb_id")
	private Long id;

	@NotEmpty(message = "Nome obrigatório")
	@Size(min = 4, max = 10, message = "O nome deverá ter entre 4 a 10 caracteres.")
	@Column(name = "alb_nome", length = 10, nullable = false)
	private String nome;

	@NotNull(message = "Ano de lançamento obrigatório")
	@Min(value = 1990, message = "A data de lançamento mínina é 1990.")
	@Max(value = 2020, message = "A data de lançamento máxima é 2020.")
	@Column(name = "alb_ano_lancamento", nullable = false)
	private int anoDeLancamento;
	
	@OneToMany(mappedBy = "album", fetch = FetchType.EAGER)
	@Cascade({
		CascadeType.ALL,
	})
	@JsonBackReference  
	private Set<Musica> musicas;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

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

	public Set<Musica> getMusicas() {
		return musicas;
	}

	public void setMusicas(Set<Musica> musicas) {
		this.musicas = musicas;
	}

}
