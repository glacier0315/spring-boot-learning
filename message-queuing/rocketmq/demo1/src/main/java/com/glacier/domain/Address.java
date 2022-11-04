package com.glacier.domain;

import java.io.Serializable;

/**
 * date 2022-01-24 15:41
 *
 * @author glacier
 * @version 1.0
 */
public class Address implements Serializable {
	private static final long serialVersionUID = -2913782531605603031L;
	private String id;
	private String country;
	private String province;
	private String city;
	private String detail;
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getCountry() {
		return country;
	}
	
	public void setCountry(String country) {
		this.country = country;
	}
	
	public String getProvince() {
		return province;
	}
	
	public void setProvince(String province) {
		this.province = province;
	}
	
	public String getCity() {
		return city;
	}
	
	public void setCity(String city) {
		this.city = city;
	}
	
	public String getDetail() {
		return detail;
	}
	
	public void setDetail(String detail) {
		this.detail = detail;
	}
	
	@Override
	public String toString() {
		return "Address{" +
				"id='" + id + '\'' +
				", country='" + country + '\'' +
				", province='" + province + '\'' +
				", city='" + city + '\'' +
				", detail='" + detail + '\'' +
				'}';
	}
	
	
	public static final class AddressBuilder {
		private String id;
		private String country;
		private String province;
		private String city;
		private String detail;
		
		private AddressBuilder() {
		}
		
		public static AddressBuilder anAddress() {
			return new AddressBuilder();
		}
		
		public AddressBuilder id(String id) {
			this.id = id;
			return this;
		}
		
		public AddressBuilder country(String country) {
			this.country = country;
			return this;
		}
		
		public AddressBuilder province(String province) {
			this.province = province;
			return this;
		}
		
		public AddressBuilder city(String city) {
			this.city = city;
			return this;
		}
		
		public AddressBuilder detail(String detail) {
			this.detail = detail;
			return this;
		}
		
		public Address build() {
			Address address = new Address();
			address.setId(id);
			address.setCountry(country);
			address.setProvince(province);
			address.setCity(city);
			address.setDetail(detail);
			return address;
		}
	}
}
