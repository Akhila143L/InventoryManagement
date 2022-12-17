package com.infinite.inventory;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="Order")
public class Order {

	@Id
	@Column(name="OrderId")
	private String OrderId;
	
	@Column(name="customerid")
	private int customerid;
	
	@Column(name="StockId")
	private String StockId;
	
	@Column(name="VendorId")
	private String vendorId;
	
	@Column(name="OrderStatus")
	@Enumerated(EnumType.STRING)
	private OrderStatus orderStatus;
	
	@Column(name="QtyOrd")
	private int QtyOrd;
	
	@Column(name="OrderedDate")
	private Date OrderedDate;
	
	@Column(name="Price")
	private int Price;
	
	@Column(name="ShippingAddress1")
	private String shippingAddress1;
	
	@Column(name="ShippingAddress2")
	private String shippingAddress2;
	
	@Column(name="City")
	private String city;
	
	@Column(name="Zipcode")
	private String zipcode;
	
	@Column(name="ShippingDate")
	private Date shippingDate;
	
	@Column(name="DeliveryDate")
	private Date deliveryDate;
	
	@Column(name="ExpectedDeliveryDate")
	private Date expectedDeliveryDate;
	
	@Column(name="Gbill")
	private int Gbill;
	
	public String getOrderId() {
		return OrderId;
	}
	public void setOrderId(String orderId) {
		OrderId = orderId;
	}
	public int getCustomerid() {
		return customerid;
	}
	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}
	public String getStockId() {
		return StockId;
	}
	public void setStockId(String stockId) {
		StockId = stockId;
	}
	public String getVendorId() {
		return vendorId;
	}
	public void setVendorId(String vendorId) {
		this.vendorId = vendorId;
	}
	public OrderStatus getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(OrderStatus orderStatus) {
		this.orderStatus = orderStatus;
	}
	public int getQtyOrd() {
		return QtyOrd;
	}
	public void setQtyOrd(int qtyOrd) {
		QtyOrd = qtyOrd;
	}
	public Date getOrderedDate() {
		return OrderedDate;
	}
	public void setOrderedDate(Date orderedDate) {
		OrderedDate = orderedDate;
	}
	public int getPrice() {
		return Price;
	}
	public void setPrice(int price) {
		Price = price;
	}
	public String getShippingAddress1() {
		return shippingAddress1;
	}
	public void setShippingAddress1(String shippingAddress1) {
		this.shippingAddress1 = shippingAddress1;
	}
	public String getShippingAddress2() {
		return shippingAddress2;
	}
	public void setShippingAddress2(String shippingAddress2) {
		this.shippingAddress2 = shippingAddress2;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public Date getShippingDate() {
		return shippingDate;
	}
	public void setShippingDate(Date shippingDate) {
		this.shippingDate = shippingDate;
	}
	public Date getDeliveryDate() {
		return deliveryDate;
	}
	public void setDeliveryDate(Date deliveryDate) {
		this.deliveryDate = deliveryDate;
	}
	public Date getExpectedDeliveryDate() {
		return expectedDeliveryDate;
	}
	public void setExpectedDeliveryDate(Date expectedDeliveryDate) {
		this.expectedDeliveryDate = expectedDeliveryDate;
	}
	public int getGbill() {
		return Gbill;
	}
	public void setGbill(int gbill) {
		Gbill = gbill;
	}
	
	public Order() {
			}
	
	public Order(String orderId, int customerid, String stockId, String vendorId, OrderStatus orderStatus, int qtyOrd,
			Date orderedDate, int price, String shippingAddress1, String shippingAddress2, String city, String zipcode,
			Date shippingDate, Date deliveryDate, Date expectedDeliveryDate, int gbill) {
		super();
		OrderId = orderId;
		this.customerid = customerid;
		StockId = stockId;
		this.vendorId = vendorId;
		this.orderStatus = orderStatus;
		QtyOrd = qtyOrd;
		OrderedDate = orderedDate;
		Price = price;
		this.shippingAddress1 = shippingAddress1;
		this.shippingAddress2 = shippingAddress2;
		this.city = city;
		this.zipcode = zipcode;
		this.shippingDate = shippingDate;
		this.deliveryDate = deliveryDate;
		this.expectedDeliveryDate = expectedDeliveryDate;
		Gbill = gbill;
	}
	
	@Override
	public String toString() {
		return "Order [OrderId=" + OrderId + ", customerid=" + customerid + ", StockId=" + StockId + ", vendorId="
				+ vendorId + ", QtyOrd=" + QtyOrd + ", OrderedDate=" + OrderedDate + ", Price=" + Price
				+ ", shippingAddress1=" + shippingAddress1 + ", shippingAddress2=" + shippingAddress2 + ", city=" + city
				+ ", zipcode=" + zipcode + ", shippingDate=" + shippingDate + ", deliveryDate=" + deliveryDate
				+ ", expectedDeliveryDate=" + expectedDeliveryDate + ", Gbill=" + Gbill + "]";
	}
	
}
