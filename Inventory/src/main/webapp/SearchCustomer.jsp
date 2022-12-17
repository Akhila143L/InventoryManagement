<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
h1
{
  background-color: #B0E0E6;
 
}
body {
  background-color:#AFEEEE;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
<body>
<h1 style="font-size:30px;height:40px; text-align:center;"> INVENTORY MANAGEMENT</h1>
<jsp:useBean id="beanDao" class="com.infinite.inventory.InventoryDAO"/>
	<form method="get" action="SearchCustomer.jsp">
		<center>
			<div style="color:black;"><b>Customer id:</b>
			<input type="text" name="customerid" size="30" /><br /> </div>
<br/><br/>

			<input type="submit" value="Search" /><br/><br/>
			<div class="Back">
<input type="button" name="Back" value="Back" onclick="window.location='MenuPage.jsp'">
</div><br/>
		</center>
	</form>
	<c:if test="${param.customerid!=null}">
	<c:set var="customerid" value="${param.customerid}"/>
		<c:set var="customer" value="${beanDao.searchCustomer(customerid)}"/>
		<c:if test="${customer!=null}">
		Customer Id :  <b>
			<c:out value="${customer.customerid}"/></b> <br/>
		Customer Name : <b>
			<c:out value="${customer.customerName}"/></b> <br/>
	    Customer PhoneNo : <b>
			<c:out value="${customer.customerPhoneNo}"/></b> <br/>
       Gender : <b>
       		<c:out value="${customer.gender}"/></b> <br/>
       Address 1:<b>
       	     <c:out value="${customer.address1}"/></b> <br/>		
		Address 2 : <b>
			<c:out value="${customer.address2}"/></b> <br/>
		ZipCode : <b>
			<c:out value="${customer.zipcode}"/></b> <br/>
		City : <b>
			<c:out value="${customer.city}"/></b> <br/>
	   
		
		</c:if>
	</c:if>
</body>
</html>