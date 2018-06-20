<%@page contentType = "text/html;charset = UTF-8" language = "java" %>
<%@page isELIgnored = "false" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<html>
   <head>
      <title>Spring MVC Form Handling</title>
   </head>

   <body>
      <h2>Submitted Student Information</h2>
      <table>
         <tr>
            <td>Nombre Equipo</td>
            <td>${nombre}</td>
         </tr>
         <tr>
            <td>Ciudad</td>
            <td>${ciudad}</td>
         </tr>
      </table>  
   </body>
   
</html>