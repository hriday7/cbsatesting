<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@ page import="java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		
		<title>Scalability Metrics</title>
		
		<link rel="stylesheet" type="text/css" href="/cbsatesting/style/main.css" />
		<link rel="stylesheet" type="text/css" href="/cbsatesting/script/dijit/themes/claro/claro.css" />
        
        <script type="text/javascript" src="CreateSystemMetric.js"></script>
        <script src="../script/dojo/dojo.js" djConfig="parseOnLoad: true"></script>
        <script type="text/javascript">
		   dojo.require("dojox.charting.widget.SelectableLegend");
		</script>
	</head>

	<body class="claro">
		<p> <a href="/cbsatesting/Performance/SaaSEvaluation.jsp"> SaaS Evaluation </a> > <a href="../ScalabilityValidation.jsp"> Scalability Validation </a> > <a href="../ScalabilityMetrics.jsp"> Scalability Measurements </a> > Add System Metric </p>
		
		<h2>Add System Metric</h2>
		
		<%
		   if (request.getParameter("message") != null) 
		   {
				out.print("<p id='message'> > Message: " + request.getParameter("message") + "</p>");
		   }
		%>
		
		<form name="createmetric" id="createmetric" method="post">
			<table class="createmetric">
				<tr>
					<td> Metric's Name: </td>
					<td> <input type="text" name="name" id="name" size="65" value="<% if(request.getParameter("name") != null) out.print(request.getParameter("name")); %>" />
					</td>
				</tr>
				<tr>
					<td> Description: </td>
					<td> <textarea name="description" id="description" rows="5" cols="50"><% if(request.getParameter("description") != null) out.print(request.getParameter("description")); %></textarea> </td>
				</tr>
				<tr>
					<td> Statistic: </td>
					<td>
						<select name="statistic1" id="statistic1"> 
							<option> Minimum </option>
							<option> Maximum </option>
							<option> Sum </option>
							<option> Average </option>
							<option> SampleCount </option>
						</select>
					</td>
				</tr>
				<tr>
					<td> </td>
					<td> <button name="submit" onClick="create(event)" style="float:left"> Create </button> </td>
				</tr>
			</table>
		</form>		
	</body>
</html>