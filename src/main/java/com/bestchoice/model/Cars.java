package com.bestchoice.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Cars {
	
	
	
	private String brand;
	
	@Id
	private String Model;
	
	private int Year;
	
	@Column(name="No_Of_Kms")
	private long NoOfKms;
	private long price;
	private String Fuel;
	public String getBrand() {
		return brand;
	}
	public void setBrand(String Brand) {
		brand = Brand;
	}
	public String getModel() {
		return Model;
	}
	public void setModel(String model) {
		Model = model;
	}
	public int getYear() {
		return Year;
	}
	public void setYear(int year) {
		Year = year;
	}
	public long getNoOfKms() {
		return NoOfKms;
	}
	public void setNoOfKms(long noOfKms) {
		NoOfKms = noOfKms;
	}
	public long getPrice() {
		return price;
	}
	public void setPrice(long Price) {
		price = Price;
	}
	public String getFuel() {
		return Fuel;
	}
	public void setFuel(String fuel) {
		Fuel = fuel;
	}
	
	@Override
	public String toString() {
		return "Cars [Brand=" + brand + ", Model=" + Model + ", Year=" + Year + ", NoOfKms=" + NoOfKms + ", Price="
				+ price + ", Fuel=" + Fuel + "]";
	}
	
	

}
