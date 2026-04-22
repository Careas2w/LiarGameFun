# Liar Game – paquete listo para GitHub

Esta versión mantiene la interfaz, botones y lógica del juego, y además deja la app preparada para instalarse como PWA en PC, Android y iPad/iPhone.

## Mejoras incluidas
- misma interfaz y mismas funcionalidades del juego
- iconos nuevos originales con personaje tipo niño con sombrero y nariz larga de madera
- `manifest.webmanifest` añadido
- `service-worker.js` añadido
- metaetiquetas e iconos enlazados en `index.html`
- soporte para instalación en escritorio y móvil usando HTTPS / GitHub Pages
- soporte para “Añadir a pantalla de inicio” en iPad/iPhone

## Archivos incluidos
- `index.html`
- `README.md`
- `supabase_setup.sql`
- `manifest.webmanifest`
- `service-worker.js`
- `favicon.ico`
- `apple-touch-icon.png`
- `icon-192.png`
- `icon-512.png`
- carpeta `icons/` con tamaños adicionales

## Qué subir a GitHub
Sube todo el contenido del ZIP a la raíz del repositorio manteniendo la carpeta `icons/`.

## Instalación
### PC y Android
Al publicar en GitHub Pages o cualquier hosting HTTPS, el navegador podrá ofrecer instalar la app.

### iPad / iPhone
Abre la web en Safari y usa **Compartir → Añadir a pantalla de inicio**.

## Supabase
No he tocado la lógica multijugador ni el SQL. Tu configuración actual sigue sirviendo.

## Antes de publicar
Revisa en `index.html` que sigan correctos:
- `SUPABASE_URL`
- `SUPABASE_KEY`

## Nota sobre GitHub Pages
La instalación PWA requiere servir la web por HTTPS. GitHub Pages lo hace automáticamente.
