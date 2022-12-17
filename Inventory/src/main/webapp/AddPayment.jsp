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
<form>
        Customer Id :
		<input type="text" name="customerId" placeholder="Customer Id"/><br/><br/>
	
       Select UPI:
		<select name="type">
		  <option value="Googlepay">Googlepay</option><br/>
		  <option value="Phonepe">Phonepe</option><br/>
		  <option value="Paytm">Paytm</option><br/>
		</select><br/><br/>
		
		Select Net Banking :
		<select name="type">
		  <option value="HDFC Bank">HDFC Bank</option>
		  <option value="ICICI Bank">ICICI Bank</option>
		  <option value="State Bank of India">State Bank of India</option>
		   <option value="Axis Bank">Axis Bank</option>
		   <option value="Kotak Mahindra Bank ">Kotak Mahindra Bank</option>
		</select><br/><br/>
		Select Cards :
		<select name="type">
		  <option value="CREDIT Card">CREDIT Card</option>
		  <option value="DEBIT Card">DEBIT Card</option>
		</select><br/><br/>
        Select Wallet :
		<select name="type">
		  <option value="Phonepe Wallet">Phonepe Wallet</option>
		  <option value="Paytm Wallet">Paytm Wallet</option>
		</select><br/> <br/>
		Gift Voucher :
		<input type="text" name="giftVoucher" placeholder="Gift Voucher"/><br/><br/>
		<input type="submit" value="Continue">
</form>
<c:if test="${param.customerId != null }">
		<jsp:useBean id="payments" class="com.infinite.inventory.Payment"/>
		<jsp:setProperty property="*" name="payments"/>
		
		<jsp:useBean id="beanDAO" class="com.infinite.inventory.InventoryDAO"/>
		<c:out value="${beanDAO.addPayment(payments)}"/>
	</c:if>
</body>
</html>