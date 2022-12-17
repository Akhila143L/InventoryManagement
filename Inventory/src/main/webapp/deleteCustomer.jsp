<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
  background-color: #FFE4C4;
 
}
body {
  background-image: url('https://learn.g2.com/hubfs/iStock-1024926532.jpg');
  background-repeat: no-repeat;
  background-size: cover;
  text-align:center;
}
</style>

<body>
<h1 style="font-size:30px;height:40px; text-align:center;"> INVENTORY MANAGEMENT</h1>
<form action="deleteCustomer.jsp" method="get">
    <div style="color:black;"><b>Enter Customer Id :</b>
    <input type="text" name="customerid"size="30" /><br /> </div>
<br/><br/>
    <input type="submit" value="continue"/><br/><br/>
    <div class="Back">
<input type="button" name="Back" value="Back" onclick="window.location='MenuPage.jsp'">
</div><br/>
</form>
<c:if test="${param.customerid!=null}">
<jsp:useBean id="customer" class="com.infinite.inventory.Customer"/>
<jsp:useBean id="beanDAO" class="com.infinite.inventory.InventoryDAO"/>
<jsp:setProperty property="*" name="customer"/>				
<c:out value="${beanDAO.deleteCustomer(customer)}"/>
</c:if>
</body>
</html>