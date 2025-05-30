// ========================
// Efecto: Cambiar el cursor por una imagen personalizada
// ========================
// Cambia el cursor normal del navegador por una imagen.
// El número 4 4 indica el "punto activo" del cursor dentro de la imagen.
document.body.style.cursor = "url('../img/cursor.png') 4 4, auto";

// ========================
// Efecto: Mostrar un popup 5 segundos después de cargar la página
// ========================
setTimeout(() => {
  const popup = document.getElementById("popup-mensaje");  // Selecciona el popup oculto
  popup.style.display = "block";                            // Lo muestra en pantalla
  setTimeout(() => popup.classList.add("mostrar"), 10);     // Añade la clase para la animación de entrada
}, 5000);

// Función para cerrar el popup cuando se hace clic en el botón "Cerrar"
function cerrarPopup() {
  const popup = document.getElementById("popup-mensaje");
  popup.classList.remove("mostrar");                        // Elimina la clase de animación
  setTimeout(() => popup.style.display = "none", 300);      // Espera 300ms y luego lo oculta del todo
}

// ========================
// Efecto: Bloquear la acción de copiar texto
// ========================
// Cuando el usuario intenta copiar contenido (Ctrl+C o botón derecho), se bloquea
document.addEventListener('copy', function(e) {
  e.preventDefault();  // Cancela la acción por defecto (copiar)
  alert("Copiar no está permitido en esta web.");
});

// ========================
// Efecto: Animación vistosa de partículas al hacer clic en una imagen
// ========================
document.addEventListener("DOMContentLoaded", () => {
  const imagenes = document.querySelectorAll(".juego img"); // Selecciona todas las imágenes de los juegos

  imagenes.forEach(img => {
    img.style.cursor = "pointer";  // Cambia el cursor a forma de mano sobre cada imagen

    img.addEventListener("click", (e) => {
      const contenedor = document.getElementById("animacion-contenedor"); // Contenedor donde van las partículas

      // Crea 30 partículas por cada clic
      for (let i = 0; i < 30; i++) {
        const part = document.createElement("div");        // Crea un nuevo div para cada partícula
        part.classList.add("particula");                   // Le asigna la clase con estilos

        const x = e.pageX;  // Coordenada X del clic
        const y = e.pageY;  // Coordenada Y del clic
        part.style.left = `${x}px`;
        part.style.top = `${y}px`;

        // Cálculo de dirección aleatoria
        const angle = Math.random() * 2 * Math.PI;         // Ángulo entre 0 y 360°
        const distance = Math.random() * 300 + 50;         // Distancia aleatoria de dispersión
        const dx = Math.cos(angle) * distance;             // Movimiento en X
        const dy = Math.sin(angle) * distance;             // Movimiento en Y

        // Se guardan los valores para animación con CSS
        part.style.setProperty('--dx', `${dx}px`);
        part.style.setProperty('--dy', `${dy}px`);
        part.style.setProperty('--rot', `${Math.random() * 720 - 360}deg`); // Rotación aleatoria

        // Color aleatorio con HSL (tono, saturación, luminosidad)
        part.style.backgroundColor = `hsl(${Math.random() * 360}, 100%, 70%)`;

        contenedor.appendChild(part);  // Se añade la partícula al contenedor

        // Después de 1.5 segundos, se elimina del DOM
        setTimeout(() => part.remove(), 1500);
      }
    });
  });
});
