package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Symphony {
	
	@Id
	@GeneratedValue( strategy = GenerationType.IDENTITY )
	private int id;
	private String name;
	private String composer;
	private byte movements;
	
	@Column( name = "musical_key" )
	private String musicalKey;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getComposer() {
		return composer;
	}
	public void setComposer(String composer) {
		this.composer = composer;
	}
	public String getMusicalKey() {
		return musicalKey;
	}
	public void setMusicalKey(String musicalKey) {
		this.musicalKey = musicalKey;
	}
	public byte getMovements() {
		return movements;
	}
	public void setMovements(byte movements) {
		this.movements = movements;
	}
	
	@Override
	public String toString() {
		return "Symphony [id=" + id + ", name=" + name + ", composer=" + composer + ", musicalKey=" + musicalKey + ", movements="
				+ movements + "]";
	}
	
}
