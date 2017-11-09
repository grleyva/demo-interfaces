package com.qualitas.entities;

import java.time.LocalDate;

public class Poliza {
	int numero;          
	LocalDate inicioVigencia;
	LocalDate finVigencia;
	
	public Poliza(int numero, LocalDate inicioVigencia, LocalDate finVigencia) {
		super();
		this.numero = numero;
		this.inicioVigencia = inicioVigencia;
		this.finVigencia = finVigencia;
	}

	public int getNumero() {
		return numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}

	public LocalDate getInicioVigencia() {
		return inicioVigencia;
	}

	public void setInicioVigencia(LocalDate inicioVigencia) {
		this.inicioVigencia = inicioVigencia;
	}

	public LocalDate getFinVigencia() {
		return finVigencia;
	}

	public void setFinVigencia(LocalDate finVigencia) {
		this.finVigencia = finVigencia;
	}

	@Override
	public String toString() {
		return "Poliza [numero=" + numero + ", inicioVigencia="
				+ inicioVigencia + ", finVigencia=" + finVigencia
				+ ", toString()=" + super.toString() + "]";
	}
	
	
}
