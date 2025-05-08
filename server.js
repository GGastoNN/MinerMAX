const express = require('express');
const path = require('path');
const app = express();

// Servir archivos estáticos (como index.html)
app.use(express.static(path.join(__dirname, 'public')));

// Redirigir todas las solicitudes a index.html (útil para SPA)
app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

// Iniciar el servidor
const port = process.env.PORT || 80;
app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
