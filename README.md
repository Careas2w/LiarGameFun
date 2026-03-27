# Liar Game – paquete rediseñado

Este paquete mantiene todas las funciones que ya tenías y añade un rediseño visual más divertido:

- fondo animado
- tarjetas glassmorphism
- botones más vivos
- avatares automáticos
- barra visual del tiempo
- palabra gigante con animación
- mascota ligera tipo muñeco mentiroso ("Lino")
- sin perder multijugador, rondas, finalizar partida ni selección de tema

## Qué subir a GitHub
Sube `index.html` a la raíz del repositorio.

## Qué revisar antes
Abre `index.html` y sustituye:
- `PEGA_AQUI_TU_PROJECT_URL`
- `PEGA_AQUI_TU_PUBLISHABLE_KEY_O_ANON_KEY`

## SQL
No hace falta cambiar el SQL si ya te funciona la versión anterior con rondas.
Si quieres rehacer la base desde cero, usa `supabase_setup.sql`.


## Nota sobre los botones
En esta versión, los botones de acceso funcionan aunque Supabase aún no esté configurado. Solo se intentará conectar a Supabase al crear o unirse a una sala.
