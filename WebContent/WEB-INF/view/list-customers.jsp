<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>CustomerList</title>
	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />
	
	
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM</h2>
			
		</div>
		
	</div>
	<br>
	
	<div id="container">
	
	<input id="add" type="button" value="AddCustomer"
				onclick="window.location.href='showFormForAdd';return false"
				class="add-button"/>
		<table>
			<tr>
				<th>FirstName</th>
				<th>LastName</th>
				<th>Email</th>
				<th>Action</th>
			</tr>
				<c:forEach var="customer" items="${customers}">
	
				<c:url var="updateLink" value="/customer/showFormForUpdate">
						<c:param name="customerId" value="${customer.id}" />
				</c:url>
				<c:url var="DeleteLink" value="/customer/delete">
						<c:param name="customerId" value="${customer.id}" />
				</c:url>
				<tr>
					<td>${customer.firstName}</td>
					<td>${customer.lastName}</td>
					<td>${customer.email}</td>
					<td>
						<a href="${updateLink}">Update</a>
						|
						<a href="${DeleteLink }"
						onclick="if(!(confirm('Are you sure yo want to delete'))) return false">Delete</a>
						
					</td>
					</tr>
				</c:forEach>
			
		</table>
	
	
	</div>
</body>

</html>