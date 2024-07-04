<%@ page import="com.example.desafio2.servicio.HabitacionBusiness" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<%@include file="assets/html/head.jsp" %>
<body>
<%@include file="assets/html/navbar.jsp" %>
<%@include file="assets/html/header.jsp" %>
<%
  HabitacionBusiness hb = new HabitacionBusiness();
  int dias = Integer.parseInt(request.getParameter("dias"));
%>
<div class="container mt-5">
  <h2>Detalle Solicitud Habitacion: <%= hb.getHabitacionPorId(request.getParameter("habitacionSeleccionada")).getNombre()%></h2>
  <table class="table">
    <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Item</th>
      <th scope="col">Valor</th>
    </tr>
    </thead>
    <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Nombre</td>
      <td>
        <p class="form-control-static"><%= request.getParameter("nombre") %></p>
      </td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Apellido</td>
      <td>
        <p class="form-control-static"><%= request.getParameter("apellido") %></p>
      </td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Email</td>
      <td>
        <p class="form-control-static"><%= request.getParameter("email") %></p>
      </td>
    </tr>
    <tr>
      <th scope="row">4</th>
      <td>Medio Pago</td>
      <td>
        <p class="form-control-static"><%= request.getParameter("medioPago") %></p>
      </td>
    </tr>
    <tr>
      <th scope="row">5</th>
      <td>Dias</td>
      <td>
        <p class="form-control-static"><%= request.getParameter("dias")%> dia(s)</p>
      </td>
    </tr>
    <tr>
      <th scope="row">6</th>
      <td>Fecha Entrada</td>
      <td>
        <p class="form-control-static"><%= request.getParameter("fechaEntrada") %></p>
      </td>
    </tr>
    <tr>
      <th scope="row">7</th>
      <td>Valor Pagar</td>
      <td>
        <p class="form-control-static"><%= dias * hb.getHabitacionPorId(request.getParameter("habitacionSeleccionada")).getPrecio() %></p>
      </td>
    </tr>
    </tbody>
  </table>
</div>
<!-- Bootstrap JS and dependencies -->
<%@include file="assets/html/footer.jsp" %>
</body>
</html>
