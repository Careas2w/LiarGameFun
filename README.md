# Liar Game – paquete listo para GitHub

Esta versión mantiene el diseño y las funcionalidades existentes, pero mejora la variedad de palabras para que se repitan mucho menos al recargar la web o encadenar partidas.

## Mejoras incluidas
- misma interfaz y mismo diseño visual
- más palabras por categoría e idioma
- selección más aleatoria usando `crypto.getRandomValues` cuando está disponible
- historial local de palabras recientes para evitar repeticiones inmediatas
- mejor rotación del tema cuando se usa `Random`
- misma lógica multijugador con Supabase, lobby, rondas y finalización de partida

## Archivos incluidos
- `index.html`
- `README.md`
- `supabase_setup.sql`

## Qué subir a GitHub
Sube estos archivos a la raíz del repositorio o descomprime el ZIP directamente en tu proyecto y haz commit.

## Supabase
En principio **no necesitas cambios adicionales en Supabase**, porque la mejora se ha hecho en la lógica del frontend y la estructura SQL actual ya soporta el juego.

Solo tendrías que tocar Supabase si:
- todavía no has creado las tablas y políticas
- quieres rehacer la base desde cero
- tu proyecto actual no tiene aplicado `supabase_setup.sql`

## Antes de publicar
Revisa en `index.html` que sigan correctos:
- `SUPABASE_URL`
- `SUPABASE_KEY`

## Despliegue rápido
1. Sube los archivos al repositorio.
2. Publica con GitHub Pages o el hosting que uses.
3. Prueba crear una sala y varias rondas para confirmar que la rotación de palabras te convence.
