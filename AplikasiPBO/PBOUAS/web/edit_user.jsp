<%-- 
    Document   : edit_user
    Created on : Nov 22, 2016, 9:42:03 PM
    Author     : TutorialPedia.NET
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.UserModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Data Mahasiswa</title>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
              integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous" />
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container text-center">
            <h1 class="bg-light py-4 text-info"><i class="fas fa-address-book"></i>Data Mahasiswa</h1>
            <h2>Edit Data</h2>
        </div>
        <form action="UserController?data=user&proses=edit-user" method="post">
            <table style="margin:20px auto;">
            <%
                String id = request.getParameter("id");
                UserModel km = new UserModel();
                km.setId(id);
                List<UserModel> data = new ArrayList<UserModel>();
                data = km.cariID(); 
                if (data.size() > 0) {

            %>
		<tr>
                    <td>Nama</td>
                    <td><input type="text" name="nama" value="<%=data.get(0).getNama()%>"></td>
		</tr>
		<tr>
                    <td>Alamat</td>
                    <td><input type="text" name="alamat" value="<%=data.get(0).getAlamat()%>"></td>
                    <td><input type="hidden" name="id" value="<%=data.get(0).getId()%>"></td>
		</tr>
		<tr>
                    <td></td>
                    <td><input type="submit" value="Update"></td>
		</tr>
                  <%}%>
            </table>
          
	</form>	
    
    </body>
</html>
