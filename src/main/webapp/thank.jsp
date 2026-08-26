<!doctype html>
<html>
<head>
<meta charset="utf-8">
How to structure a web application with the MVC pattern
<title>Murach's Java Servlets and JSP</title>
<link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
<hl>Thanks for joining our email list</hl>
<p>Here is the information that you entered:</p>
<label>Email:</label>
<span>S{user,email}</spanxbr>
<label>First Name:</label>
<span>${user,firstName}</spanxbr>
<label>Last Name:</label>
<span>${user.lastName}</spanxbr>
<p>To enter another email address,
button in your browser or the Return button shown
click on the Back
below.</p>
II II
<form action= methods,rget">
cinput type="hidden" name="action" values"join">
<input type="submit" values"Return">
</form>
</body>
</html>