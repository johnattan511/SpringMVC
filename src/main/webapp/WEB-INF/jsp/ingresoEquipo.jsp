
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ingreso Equipos</title>
</head>
<body>
<body>
      <h2>Student Information</h2>
      <form:form method = "POST" action = "/SpringMVC/setearEquipo">
         <table>
            <tr>
               <td><form:label path = "nombre">Name</form:label></td>
               <td><form:input path = "nombre" /></td>
            </tr>
            <tr>
               <td><form:label path = "ciudad">Age</form:label></td>
               <td><form:input path = "ciudad" /></td>
            </tr>
            <tr>
               <td colspan = "2">
                  <input type = "submit" value = "Submit"/>
               </td>
            </tr>
         </table>  
      </form:form>
   </body>

</body>
</html>