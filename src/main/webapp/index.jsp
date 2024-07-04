<%@ page import="com.example.desafio2.modelo.Habitacion" %>
<%@ page import="com.example.desafio2.servicio.HabitacionBusiness" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<%@include file="assets/html/head.jsp"%>
<body>
<%@include file="assets/html/navbar.jsp" %>
<%@include file="assets/html/header.jsp" %>
<%
    HabitacionBusiness hb = new HabitacionBusiness();
%>
<!-- Contenido de la pagina -->
<div class="container">
    <!-- Formulario para enviar la información -->
    <form action="procesa.jsp" method="POST">
        <div class="row px-4">
            <div class="col-12">
                <h1 class="mt-4">Habitaciones Disponibles (<%=hb.contarHabitaciones()%>)</h1>
                <hr class="mb-2">
            </div>
        </div>

        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-1">
            <% for(Habitacion habitacion : hb.getHabitaciones()) { %>
            <div class="col mb-2 p-4">
                <div class="card h-100 seleccionar-habitacion" style="width: 18rem;" data-id="<%=habitacion.getId()%>" data-nombre="<%=habitacion.getNombre()%>" onclick="seleccionarHabitacion(this)">
                    <img src="<%=habitacion.getImagen()%>" class="card-img-top img" alt="<%=habitacion.getNombre()%>">
                    <div class="card-body text-center">
                        <h5 class="card-title"><%=habitacion.getNombre()%></h5>
                        <p class="card-text"><%=habitacion.getDescripcion()%></p>
                        <p class="card-text">CL$ <%=habitacion.getPrecio()%></p>
                        <input type="radio" name="habitacionSeleccionada" value="<%=habitacion.getId()%>" class="habitacion-radio" required hidden>
                    </div>
                </div>
            </div>
            <% } %>
        </div>

        <!-- Sección para la información del cliente -->
        <div class="data-form">
            <h3>Información de Reserva de Habitacion</h3>
            <hr>
            <div class="row mb-3">
                <div class="col-md-6">
                    <label for="nombre" class="form-label">Nombre</label>
                    <input type="text" class="form-control" id="nombre" name="nombre" required>
                </div>
                <div class="col-md-6">
                    <label for="apellido" class="form-label">Apellido</label>
                    <input type="text" class="form-control" id="apellido" name="apellido" required>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-md-6">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
                <div class="col-md-2">
                    <label for="medioPago" class="form-label">Medio de Pago</label>
                    <select class="form-control" id="medioPago" name="medioPago" required>
                        <option value="Contado">Contado</option>
                        <option value="Tarjeta de Débito/Credito">Tarjeta de Débito/Credito</option>
                        <option value="Efectivo">Efectivo</option>
                    </select>
                </div>
                <div class="col-md-2">
                    <label for="dias" class="form-label">Días</label>
                    <select class="form-control" id="dias" name="dias" required>
                        <option value="1">1 día(s)</option>
                        <option value="2">2 día(s)</option>
                        <option value="3">3 día(s)</option>
                        <option value="4">4 día(s)</option>
                        <option value="5">5 día(s)</option>
                    </select>
                </div>
                <div class="col-md-2">
                    <label for="fechaEntrada" class="form-label">Fecha Entrada</label>
                    <select class="form-control" id="fechaEntrada" name="fechaEntrada" required>
                        <option value="5 Enero 2024">5 Enero 2024</option>
                        <option value="5 Febrero 2024">5 Febrero 2024</option>
                        <option value="5 Marzo 2024">5 Marzo 2024</option>
                        <option value="5 Abril 2024">5 Abril 2024</option>
                        <option value="5 Mayo 2024">5 Mayo 2024</option>
                    </select>
                </div>
            </div>
            <hr class="mt-5">
            <button type="submit" class="btn btn-primary">Enviar Solicitud de Reserva</button>
        </div>
    </form>
</div>
<%@include file="assets/html/footer.jsp" %>
</body>
</html>