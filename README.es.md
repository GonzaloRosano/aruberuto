<div align="center">

# 日本語 Aruberuto Makoto

**Landing page — curso de japonés online**

</div>

![Screenshot](https://raw.githubusercontent.com/GonzaloRosano/aruberuto/master/docs/screenshot.png)

---

## Sobre el proyecto

> Propuesta no solicitada, desarrollada por iniciativa propia para Alberto Alonso Cividanes (Aruberuto Makoto) como muestra de trabajo. No es un desarrollo comisionado por él.

Landing page de una sola vista para vender el curso de japonés online de **Aruberuto Makoto**, dictado por Alberto Alonso Cividanes. El objetivo es directo: comunicar el método, generar confianza con testimonios y prueba social, y convertir al visitante en alumno inscrito.

No es un sitio informativo, es una página de venta. Cada sección empuja hacia el mismo destino: el bloque de inscripción.

---

## Qué incluye

- **Hero** con promesa principal y video de vista previa
- **Beneficios** del método
- **Detalles del curso**: nivel, formato de clases, metodología
- **Sensei**: presentación del instructor
- **Testimonios** de alumnos
- **Precio**, garantía y CTA de compra
- **Bonus** incluidos en la inscripción
- **Contacto** y footer con enlaces legales
- Páginas de `/terminos` y `/privacidad`

---

## Stack técnico

![Astro](https://img.shields.io/badge/Astro-BC52EE?style=flat-square&logo=astro&logoColor=white)
![Tailwind CSS](https://img.shields.io/badge/Tailwind-06B6D4?style=flat-square&logo=tailwindcss&logoColor=white)
![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?style=flat-square&logo=typescript&logoColor=white)
![Node.js](https://img.shields.io/badge/Node.js-339933?style=flat-square&logo=node.js&logoColor=white)
![pnpm](https://img.shields.io/badge/pnpm-F69220?style=flat-square&logo=pnpm&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white)

Astro 6 en modo `server`, con adaptador `@astrojs/node` (standalone) y Tailwind CSS 4. Paleta y tipografía centralizadas en `src/styles/global.css`: serif japonesa **Shippori Mincho** para títulos, **DM Sans** para el cuerpo.

---

## Puesta en marcha

```bash
pnpm install
pnpm dev
```

Disponible en `http://localhost:4321`.

Build y ejecución en producción:

```bash
pnpm build
pnpm start
```

---

## Docker

```bash
docker build -t aruberuto .
docker run -p 4321:4321 aruberuto
```

Build multi-stage (`deps` → `build` → `runtime`) sobre `node:22-alpine`. La imagen final solo lleva `dist/`, `node_modules` y `package.json`.

---

## Estructura

```
src/
├─ components/    # Secciones de la landing (Hero, Pricing, Sensei, etc.)
├─ layouts/       # Layout.astro — head, SEO, Open Graph/Twitter, fuentes
├─ pages/         # index, terminos, privacidad
└─ styles/        # Tokens de color y tipografía
```

---

## Estado

Propuesta en revisión. Contenido, precios y enlace de pago (Hotmart) sujetos a validación antes de publicar en producción.
