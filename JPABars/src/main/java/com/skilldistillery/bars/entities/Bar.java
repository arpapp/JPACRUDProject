package com.skilldistillery.bars.entities;

import java.time.LocalDateTime;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.CreationTimestamp;


@Entity
public class Bar {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	private String city;
	
	private String country;
	
	private Integer rating;
	
	
	@Column(name="blacked_out_at")
	private String blackedOutAt;
	
	@Temporal(TemporalType.DATE)
	@CreationTimestamp  
	private Date created;
	
	private String activities;
	
	@Column(name="other_comments")
	private String otherComments;

	public Bar() {
		super();
	}

	

	public Bar(int id, String name, String city, Integer rating, String blackedOutAt, Date created,
			String activities, String otherComments) {
		super();
		this.id = id;
		this.name = name;
		this.city = city;
		this.rating = rating;
		this.blackedOutAt = blackedOutAt;
		this.created = created;
		this.activities = activities;
		this.otherComments = otherComments;
	}

	

	public String getCountry() {
		return country;
	}



	public void setCountry(String country) {
		this.country = country;
	}



	public String getCity() {
		return city;
	}



	public void setCity(String city) {
		this.city = city;
	}



	public Integer getRating() {
		return rating;
	}



	public void setRating(Integer rating) {
		this.rating = rating;
	}



	public String getBlackedOutAt() {
		return blackedOutAt;
	}



	public void setBlackedOutAt(String blackedOutAt) {
		this.blackedOutAt = blackedOutAt;
	}



	public Date getCreated() {
		return created;
	}



	public void setCreated(Date created) {
		this.created = created;
	}



	public String getActivities() {
		return activities;
	}



	public void setActivities(String activities) {
		this.activities = activities;
	}



	public String getOtherComments() {
		return otherComments;
	}



	public void setOtherComments(String otherComments) {
		this.otherComments = otherComments;
	}



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



	@Override
	public String toString() {
		return "Bar [id=" + id + ", name=" + name + ", city=" + city + ", rating=" + rating + ", blackedOutAt="
				+ blackedOutAt + ", created=" + created + ", activities=" + activities + ", otherComments="
				+ otherComments + "]";
	}

	
	
	

}
