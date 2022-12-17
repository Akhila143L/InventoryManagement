package com.infinite.inventory;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Stock")
public class Stock {

	@Id
	@Column(name="Stockid")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	 private String stockid;
	
	@Column(name="ItemName")
	 private String ItemName;
	
	@Column(name="Price")
	 private int Price;
	
	@Column(name="QuantityAvail")
	 private int QuantityAvail;
	 
	public String getStockid() {
		return stockid;
	}
	public void setStockid(String stockid) {
		this.stockid = stockid;
	}
	public String getItemName() {
		return ItemName;
	}
	public void setItemName(String itemName) {
		ItemName = itemName;
	}
	public int getPrice() {
		return Price;
	}
	public void setPrice(int price) {
		Price = price;
	}
	public int getQuantityAvail() {
		return QuantityAvail;
	}
	public void setQuantityAvail(int quantityAvail) {
		QuantityAvail = quantityAvail;
	}
	
	public Stock() {
	
	}
	
	public Stock(String stockid, String itemName, int price, int quantityAvail) {
		this.stockid = stockid;
		ItemName = itemName;
		Price = price;
		QuantityAvail = quantityAvail;
	}
	
	@Override
	public String toString() {
		return "Stock [stockid=" + stockid + ", ItemName=" + ItemName + ", Price=" + Price + ", QuantityAvail="
				+ QuantityAvail + "]";
	}
	 
}
