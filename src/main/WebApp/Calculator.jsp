<%@page import="Calculator.SimpleCalculator.Calculator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Calculator</title>
<style>
table {
	margin: auto;
     width: 50%;
     border: 3px solid green;
     background-color: #b0e0e6;
    padding: 10px;
}
.alignright{
	text-align: right;
}
span {
	color: RED;
}
</style>
</head>

<body BGCOLOR=#103E26>


<table>


<tr>
<td>
<h1>Basic Calculator</h1>
<form method="post" action="Calculator.jsp">
Number 1 : <input type="text" name="num1" class="alignright"> <br/><br/>
Number 2 : <input type="text" name="num2" class="alignright"> <br/><br/>

Operator :


<br/><br/>
<input type="radio" name="r1" value="Add" checked=checked>+ (Addition)	
<input type="radio" name="r1" value="Sub">- (Subtraction)<br/>
<input type="radio" name="r1" value="Mul">* (Multiplication)	
<input type="radio" name="r1" value="Div">/ (Division)<br/><br/>
<%@page language="java"%>
<%

try {
	double num1 = Double.parseDouble(request.getParameter("num1"));
	double num2 = Double.parseDouble(request.getParameter("num2"));
	double result = 0.0;
	String operation = request.getParameter("r1");
	Calculator obj = new Calculator();
	if(operation.equalsIgnoreCase("Add")){
		result = obj.doAdd(num1, num2);
		out.println("The result of the previous calculation is : "+result+"<br/><br/>");
	}
	else if(operation.equalsIgnoreCase("Sub")){
		result = obj.doSub(num1, num2);
		out.println("The result of the previous calculation is : "+result+"<br/><br/>");
	}
	else if(operation.equalsIgnoreCase("Mul")){
		result = obj.doMul(num1, num2);
		out.println("The result of the previous calculation is : "+result+"<br/><br/>");
	}
	else if(operation.equalsIgnoreCase("Div")){
		result = obj.doDiv(num1, num2);
		out.println("The result of the previous calculation is : "+result+"<br/><br/>");
	}
	else {
		out.println("There is something wrong!!!<br/><br/>");
	}
} catch(NumberFormatException e) {
	out.println("<span>Invalid number entered... Try Again...</span><br/><br/>"); 
}
catch(Exception e){
	out.println("<span>Divide by Zero Error... Try Again...</span><br/><br/>");
}
%>

<input type="submit" value="Calculate">
</form>
</td>
</tr>
</table>
</body>
</html>