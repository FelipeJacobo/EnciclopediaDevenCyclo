document.addEventListener('DOMContentLoaded', () => {
    const searchInput = document.querySelector('.search-form input[type="text"]');
    const searchButton = document.querySelector('.search-form button');
    
    searchButton.addEventListener('click', () => {
        performSearch(searchInput.value);
    });

    searchInput.addEventListener('keypress', (e) => {
        if (e.key === 'Enter') {
            performSearch(searchInput.value);
        }
    });

    function performSearch(query) {
        query = query.toLowerCase();
        
        // Obtiene las secciones de términos y categorías
        const termsSection = document.querySelectorAll('.popular-terms ul li a');
        const categoriesSection = document.querySelectorAll('.categories ul li a');
        
        // Función para mostrar u ocultar elementos según la búsqueda
        function filterItems(items) {
            items.forEach(item => {
                if (item.textContent.toLowerCase().includes(query)) {
                    item.parentElement.style.display = '';
                } else {
                    item.parentElement.style.display = 'none';
                }
            });
        }

        // Aplica el filtro
        filterItems(termsSection);
        filterItems(categoriesSection);
    }
});
