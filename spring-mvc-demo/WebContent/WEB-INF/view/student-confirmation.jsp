<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- for using a loop -->

<!DOCTYPE html>
<html>

<head>
<title>Student Confirmation</title>
</head>

<body>
						  <!-- Calls student.getFirstName() and student.getLastName() -->
						  <!-- | -->
						  <!-- V -->
						  
The student is confirmed: ${student.firstName} ${student.lastName} 

<br> <br>

Country: ${student.country} <!--  <- Spring will call student.getCountry()   -->

<br> <br>

Favorite language is: ${student.favoriteLanguage}

<br> <br>

Operation systems: 

<ul>
	<c:forEach var="temp" items="${student.operationSystems}">
		<li>${temp}</li>
	</c:forEach>
</ul>

<br><br>

</body>

</html>