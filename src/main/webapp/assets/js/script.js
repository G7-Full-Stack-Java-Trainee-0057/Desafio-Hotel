function seleccionarHabitacion(card) {
    // Quitar selección de todas las tarjetas
    document.querySelectorAll('.seleccionar-habitacion').forEach(c => {
        c.classList.remove('selected');
        c.querySelector('.habitacion-radio').checked = false;
    });

    // Agregar selección a la tarjeta clicada
    card.classList.add('selected');
    card.querySelector('.habitacion-radio').checked = true;
}