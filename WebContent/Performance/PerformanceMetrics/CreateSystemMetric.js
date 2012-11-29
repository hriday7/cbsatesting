function create(event)
{
	if (document.getElementById("name").value == "")
	{
		alert("Enter a value for the 'Name' field.");
		return;
	}

	document.getElementById("name").disabled = false;
	document.getElementById("createmetric").action = "AddSystemMetric.jsp";
	document.getElementById("createmetric").submit();
}