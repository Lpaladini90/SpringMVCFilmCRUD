package com.skilldistillery.mvcfilmsite.entities;

import java.util.Objects;

public class Actor {
	private int id;
	private String firstName;
	private String lastName;
	
	
	public Actor() {
		super();
	}
	public Actor(int id) {
		this.id = id;
	}

	public Actor(int id, String firstName, String lastName) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
	}

	///////////// GETTERS and SETTERS /////////////////

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	////////////// END GETTERS and SETTERS ////////////////

	@Override
	public String toString() {
		return "Actor: " + firstName + " " + lastName;
	}
	@Override
	public int hashCode() {
		return Objects.hash(id);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Actor other = (Actor) obj;
		return id == other.id;
	}

	
	
}