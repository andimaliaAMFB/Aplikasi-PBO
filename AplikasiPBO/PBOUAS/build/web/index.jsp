<%-- 
    Document   : index
    Created on : Nov 20, 2016, 12:39:11 PM
    Author     : PH4NTHOM
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
        </div>
    <center>
        <a class="tambah" href="UserController?proses=input-user"><button class="btn btn-success" id="btn-create" >Create</button></a>
    </center>
    <div class="container d-flex">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">No</th>
                    <th scope="col">Nama</th>
                    <th scope="col">Alamat</th>
                    <th scope="col">Edit</th>
                    <th scope="col">Delete</th>
                </tr>
            </thead>
              <%
                  UserModel km = new UserModel();
                  List<UserModel> data = new ArrayList<UserModel>();
                  String ket = request.getParameter("ket");
                  if (ket == null) {
                      data = km.tampil();
                  } 
                  for (int x = 0; x < data.size(); x++) {
              %>
               <tr>
                  <td><%=x + 1%></td>
                  <td><%=data.get(x).getNama()%></td>
                  <td><%=data.get(x).getAlamat()%></td>
                  <td>
                      <a href="UserController?proses=edit-user&id=<%=data.get(x).getId()%>">
                          <button class="btn btn-warning" id="btn-update">Edit</button>
                      </a>
                  </td>
                  <td>
                      <a href="UserController?proses=hapus-user&id=<%=data.get(x).getId()%>">
                          <button class="btn btn-danger" id="btn-delete">Delete</button>
                      </a>
                  </td>
              </tr>
              <%}%>
          </table>
    </div>
              
</body>
</html>
