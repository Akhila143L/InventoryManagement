<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="beanDao" class="com.infinite.inventory.InventoryDAO"/>
	<form method="get" action="UpdateCustomer.jsp">
		<center>
			Customer Id : 
			<input type="text" name="customerid" /> <br/><br/> 
			<input type="submit" value="Update" />
		</center>
	</form>
	<c:if test="${param.customerId!= null }">
Customer Name :
<input type="text" name="customerName" ><br/><br/>
Customer PhoneNo :
<input type="text" name="customerPhoneNo" "><br/><br/>
Gender :
<input type="radio" name="gender" value="MALE">MALE<br/><br/>
<input type="radio" name="gender" value="FEMALE">FEMALE<br/><br/>
Address 1:
<input type="text" name="address1" ><br/><br/>
Address 2:
<input type="text" name="address2" ><br/><br/>
ZipCode :
<input type="text" name="zipcode" ><br/><br/>
City :
<input type="text" name="city" ><br/><br/>
<input type="submit"  value="SUBMIT"><br/><br/>
</c:if>
	<c:if test="${param.customername!=null}">
	<jsp:useBean id="customer" class="com.infinite.inventory.Customer"/>
		<jsp:useBean id="beanDAO" class="com.infinite.inventory.InventoryDAO"/>		
                <jsp:setProperty property="customerName" name="customer"/>		
				<jsp:setProperty property="customerPhoneNo" name="customer"/>
				<jsp:setProperty property="gender" name="customer"/>
				<jsp:setProperty property="address1" name="customer"/>
				<jsp:setProperty property="address2" name="customer"/>
				<jsp:setProperty property="zipcode" name="customer"/>
			    <jsp:setProperty property="city" name="customer"/>			
			<jsp:setProperty property="*" name="customer"/>			
		<c:out value="${beanDAO.updateCustomer(customer)}"/>
	</c:if>

</body>
</html>