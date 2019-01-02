package com.semobang.property.domain;

// 검색 조건 VO
public class SearchVO {

	private String search_category;
	private String search_type;
	private String search_city;
	private String search_gu;
	private String search_price;
	private String search_min_price;
	private String search_max_price;
	private String search_deposit;
	private String search_min_deposit;
	private String search_max_deposit;
	private String search_size;
	private String search_min_size;
	private String search_max_size;
	private String search_bedroom;
	private String search_min_bedroom;
	private String search_max_bedroom;
	private String search_option;
	private int search_startRow;
	private int search_propertyPerPage;
	private String search_order_by;
	
	public String getSearch_category() {
		return search_category;
	}
	public void setSearch_category(String search_category) {
		this.search_category = search_category;
	}
	public String getSearch_type() {
		return search_type;
	}
	public void setSearch_type(String search_type) {
		this.search_type = search_type;
	}
	public String getSearch_city() {
		return search_city;
	}
	public void setSearch_city(String search_city) {
		this.search_city = search_city;
	}
	public String getSearch_gu() {
		return search_gu;
	}
	public void setSearch_gu(String search_gu) {
		this.search_gu = search_gu;
	}
	public String getSearch_price() {
		return search_price;
	}
	public void setSearch_price(String search_price) {
		this.search_price = search_price;
		
		String[] propertyPrice = new String(search_price).split(",");
		this.search_min_price = propertyPrice[0];
		this.search_max_price = propertyPrice[1];
	}
	public String getSearch_min_price() {
		return search_min_price;
	}
	public void setSearch_min_price(String search_min_price) {
		this.search_min_price = search_min_price;
	}
	public String getSearch_max_price() {
		return search_max_price;
	}
	public void setSearch_max_price(String search_max_price) {
		this.search_max_price = search_max_price;
	}
	public String getSearch_deposit() {
		return search_deposit;
	}
	public void setSearch_deposit(String search_deposit) {
		this.search_deposit = search_deposit;
		
		String[] propertyDeposit = new String(search_deposit).split(",");
		this.search_min_deposit = propertyDeposit[0];
		this.search_max_deposit = propertyDeposit[1];
	}
	public String getSearch_min_deposit() {
		return search_min_deposit;
	}
	public void setSearch_min_deposit(String search_min_deposit) {
		this.search_min_deposit = search_min_deposit;
	}
	public String getSearch_max_deposit() {
		return search_max_deposit;
	}
	public void setSearch_max_deposit(String search_max_deposit) {
		this.search_max_deposit = search_max_deposit;
	}
	public String getSearch_size() {
		return search_size;
	}
	public void setSearch_size(String search_size) {
		this.search_size = search_size;
		
		String[] propertySize = new String(search_size).split(",");
		this.search_min_size = propertySize[0];
		this.search_max_size = propertySize[1];
	}
	public String getSearch_min_size() {
		return search_min_size;
	}
	public void setSearch_min_size(String search_min_size) {
		this.search_min_size = search_min_size;
	}
	public String getSearch_max_size() {
		return search_max_size;
	}
	public void setSearch_max_size(String search_max_size) {
		this.search_max_size = search_max_size;
	}
	public String getSearch_bedroom() {
		return search_bedroom;
	}
	public void setSearch_bedroom(String search_bedroom) {
		this.search_bedroom = search_bedroom;
		
		String[] propertyBedroom = new String(search_bedroom).split(",");
		this.search_min_bedroom = propertyBedroom[0];
		this.search_max_bedroom = propertyBedroom[1];
	}
	public String getSearch_min_bedroom() {
		return search_min_bedroom;
	}
	public void setSearch_min_bedroom(String search_min_bedroom) {
		this.search_min_bedroom = search_min_bedroom;
	}
	public String getSearch_max_bedroom() {
		return search_max_bedroom;
	}
	public void setSearch_max_bedroom(String search_max_bedroom) {
		this.search_max_bedroom = search_max_bedroom;
	}
	public String getSearch_option() {
		return search_option;
	}
	public void setSearch_option(String search_option) {
		this.search_option = search_option;
	}
	public int getSearch_startRow() {
		return search_startRow;
	}
	public void setSearch_startRow(int search_startRow) {
		this.search_startRow = search_startRow;
	}
	public int getSearch_propertyPerPage() {
		return search_propertyPerPage;
	}
	public void setSearch_propertyPerPage(int search_propertyPerPage) {
		this.search_propertyPerPage = search_propertyPerPage;
	}
	public String getSearch_order_by() {
		return search_order_by;
	}
	public void setSearch_order_by(String search_order_by) {
		this.search_order_by = search_order_by;
	}
}
