package com.viajes.viajesbd.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Country")
public class Country implements Serializable {
	
	@Id
	@Column(name="country_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	@Column(name="country_name")
	private String name;
	
	@Column(name="country_acronym")
	private String acronym;
	
	@Column(name="country_creationDate")
	private Date creationDate;
	
	@Column(name="country_creationUser")
	private String creationUser;
	
	@Column(name="country_modificationDate")
	private Date modificationDate;
	
	@Column(name="country_modificationUser")
	private String modificationUser;
	
	public Country() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Country(String name, String acronym, Date creationDate, String creationUser, Date modificationDate,
			String modificationUser) {
		super();
		this.name = name;
		this.acronym = acronym;
		this.creationDate = creationDate;
		this.creationUser = creationUser;
		this.modificationDate = modificationDate;
		this.modificationUser = modificationUser;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAcronym() {
		return acronym;
	}
	public void setAcronym(String acronym) {
		this.acronym = acronym;
	}
	public Date getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}
	public String getCreationUser() {
		return creationUser;
	}
	public void setCreationUser(String creationUser) {
		this.creationUser = creationUser;
	}
	public Date getModificationDate() {
		return modificationDate;
	}
	public void setModificationDate(Date modificationDate) {
		this.modificationDate = modificationDate;
	}
	public String getModificationUser() {
		return modificationUser;
	}
	public void setModificationUser(String modificationUser) {
		this.modificationUser = modificationUser;
	}
	
	
	
}
