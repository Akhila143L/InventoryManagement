<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Customer</title>
</head>
<style>
h1
{
  background-color: #FFE4C4;
 
}
body {
  background-image: url('https://learn.g2.com/hubfs/iStock-1024926532.jpg');
  background-repeat: no-repeat;
  background-size: cover;
  text-align: center;
}
</style>
<body>
<h1 style="font-size:30px;height:40px; text-align:center;"> INVENTORY MANAGEMENT</h1>
<jsp:useBean id="dao" class="com.infinite.inventory.InventoryDAO"></jsp:useBean>
	<c:if test="${param.id != null }">
	<c:set var="customer" value="${dao.searchCustomer(param.id)}"/>
		<form text-align="center">
			<div style="color:black;"><b>Customer id:</b>
			<input name="customerid"  value="${param.id }" readonly size="30" /><br /> </div>
<br/><br/>
			<div style="color:black;"><b> Customer Name :</b>
			<input name="customerName" type="text" value="${customer.customerName }"size="30" /><br /> </div>
<br/><br/>
			
            <div style="color:black;"><b>Customer PhoneNo :</b>
			<input name="customerPhoneNo" type="text" value="${customer.customerPhoneNo }" size="30" /><br /> </div>
<br/><br/>
			<div style="color:black;"><b>Gender :</b>
            <input type="radio" name="gender" value="MALE"size="30" />MALE
            <input type="radio" name="gender" value="FEMALE"size="30" />FEMALE<br/></div>
            <br/><br/>
			 <div style="color:black;"><b>Address 1:</b>
			<input name="address1" type="text" value="${customer.address1}" size="30" /><br /> </div>
<br/><br/>
			 <div style="color:black;"><b>Address 2:</b>
			<input name="address2" type="text" value="${customer.address2}" size="30" /><br /> </div>
<br/><br/>
			 <div style="color:black;"><b>ZipCode :</b>
			<input name="zipcode" type="text" value="${customer.zipcode}"size="30" /><br /> </div>
<br/><br/>
			 <div style="color:black;"><b>City :</b>
			<input name="city" type="text" value="${customer.city}"size="30" /><br /> </div>
<br/><br/>

			<input type="submit" value="Update">
		</form>	
	</c:if>
	<c:if test="${param.customerid != null && param.customerName != null }">
		<jsp:useBean id="customer" class="com.infinite.inventory.Customer"/>		
			    		<jsp:setProperty property="*" name="customer"/>
							<c:out value="${dao.updateCustomer(customer)}"/>
		
	</c:if>
</body>
</html>