<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>
<title>Student Registration page</title>
</head>

<body>
	<form:form action="processForm" modelAttribute="student"> <!-- must match to model attribute in controller theModel.addAttribute("student", new Student()); -->
	
	First name : <form:input path="firstName"/> <!-- Property of Student class -->
	
	<br> <br>
		
	Last name : <form:input path="lastName"/> <!-- Property of Student class -->
	
	<br><br>
	
	<!-- When form is loaded Spring MVC will call: student.getFirstName() and student.getLastName() -->
	<!-- When form is submitted Spring MVC will call student.setirstName() and student.setLastName() -->
	
	Country: 
	<form:select path="country"> <!-- on submit Spring will call student.setCountry(...) -->
	
		<form:options items="${student.countryOptions}" />
	
	</form:select>
	
	<br><br>
	
	Favorite Programming Language:    <!-- on submit Spring will call student.setFavoriteLanguage(...) -->
	
	Java <form:radiobutton path="favoriteLanguage" value="Java"/>
	C# <form:radiobutton path="favoriteLanguage" value="C#"/>
	PHP <form:radiobutton path="favoriteLanguage" value="PHP"/>
	Python <form:radiobutton path="favoriteLanguage" value="Python"/>	
	
	<br><br>
	
	Operating Systems:
	
	Linux <form:checkbox path="operationSystems" value="Linux" />
	Mac OS <form:checkbox path="operationSystems" value="Mac OS" />
	MS Windows <form:checkbox path="operationSystems" value="MS Windows" />
	
	<br><br>
	
	<input type="submit" value="Submit" />
	
	</form:form>
</body>

</html>