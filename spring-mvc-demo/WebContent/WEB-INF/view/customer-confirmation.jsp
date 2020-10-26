<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- for using a loop -->

<!DOCTYPE html>
<html>

<head>
	<title>Customer Confirmation</title>
</head>

<body>

The customer is confirmed: ${customer.firstName}  ${customer.lastName}

<br><br>

Free Passes: ${customer.freePasses}

<br><br>

Postal code: ${customer.postalCode}

<br><br>

Course code: ${customer.courseCode}

</body>

</html>