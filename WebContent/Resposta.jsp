<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

double a = Double.parseDouble(request.getParameter("a"));
double b = Double.parseDouble(request.getParameter("b"));
double c = Double.parseDouble(request.getParameter("c"));
double delta = 0;

delta = b*b + 4*a*c;

String msg;
double x1 = 0;
double x2 = 0;

if(delta < 0)
	msg = "delta negativo";
else{
	x1 = (-b + Math.sqrt(delta))/2*a;
	x2 = (-b - Math.sqrt(delta))/2*a;
}
%>

Delta:
<%=delta%>
<br>
X1:
<%=x1%>
X2:
<%=x2%>

</body>
</html>