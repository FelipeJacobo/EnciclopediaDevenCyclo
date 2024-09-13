// Función para cargar términos
function loadTerms() {
    fetch('php/get_terms.php') // Nombre del archivo PHP
        .then(response => response.json())
        .then(data => {
            const list = document.getElementById('termsList');
            list.innerHTML = '';
            data.forEach(term => {
                const listItem = document.createElement('li');
                listItem.innerHTML = `<strong>${term.nombre}</strong>: ${term.descripcion}`;
                list.appendChild(listItem);
            });
        })
        .catch(error => console.error('Error:', error));
}

// Función para búsqueda de términos
function searchTerms() {
    const query = document.getElementById('searchInput').value.toLowerCase();
    const listItems = document.querySelectorAll('#termsList li');
    listItems.forEach(item => {
        const termName = item.querySelector('strong').textContent.toLowerCase();
        const termDescription = item.textContent.toLowerCase();
        if (termName.includes(query) || termDescription.includes(query)) {
            item.style.display = '';
        } else {
            item.style.display = 'none';
        }
    });
}

// Carga los términos al cargar la página
document.addEventListener('DOMContentLoaded', loadTerms);
