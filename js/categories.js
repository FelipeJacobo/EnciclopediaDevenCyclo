// Función para cargar categorías
function loadCategories() {
    fetch('php/get_categories.php') // Nombre del archivo PHP
        .then(response => response.json())
        .then(data => {
            const list = document.getElementById('categoriesList');
            list.innerHTML = ''; // Limpiar la lista antes de agregar nuevas categorías
            data.forEach(category => {
                const listItem = document.createElement('li');
                listItem.innerHTML = `<strong>${category.nombre}</strong>: ${category.descripcion}`; // Incluye la descripción
                list.appendChild(listItem);
            });
        })
        .catch(error => console.error('Error al cargar categorías:', error));
}

// Función para búsqueda de categorías
function searchCategories() {
    const query = document.getElementById('searchInput').value.toLowerCase();
    const listItems = document.querySelectorAll('#categoriesList li');
    listItems.forEach(item => {
        const categoryName = item.querySelector('strong').textContent.toLowerCase();
        const categoryDescription = item.textContent.toLowerCase();
        if (categoryName.includes(query) || categoryDescription.includes(query)) {
            item.style.display = ''; // Mostrar elemento
        } else {
            item.style.display = 'none'; // Ocultar elemento
        }
    });
}

// Carga las categorías al cargar la página
document.addEventListener('DOMContentLoaded', loadCategories);
