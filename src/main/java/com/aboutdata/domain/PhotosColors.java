package com.aboutdata.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "xx_photos_colors")
public class PhotosColors extends BaseEntity {
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 6480913026914570289L;

	
	@OneToOne
	@JoinColumn(name = "photos_id",nullable = false)
	private Photos photos;
    
  
    @Column(nullable = false,length =7)
    private String color;

	public Photos getPhotos() {
		return photos;
	}

	public void setPhotos(Photos photos) {
		this.photos = photos;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}
    
}
