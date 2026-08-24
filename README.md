<div align="center">

# 日本語 Aruberuto Makoto

### Propuesta de landing page — curso de japonés online

[![Astro](https://img.shields.io/badge/Astro-6-BC52EE?logo=astro&logoColor=white)](https://astro.build)
[![Tailwind CSS](https://img.shields.io/badge/Tailwind-4-06B6D4?logo=tailwindcss&logoColor=white)](https://tailwindcss.com)
[![Node](https://img.shields.io/badge/Node-22-339933?logo=node.js&logoColor=white)](https://nodejs.org)
[![pnpm](https://img.shields.io/badge/pnpm-workspace-F69220?logo=pnpm&logoColor=white)](https://pnpm.io)
[![Docker](https://img.shields.io/badge/Docker-ready-2496ED?logo=docker&logoColor=white)](https://www.docker.com)

</div>

---

## Sobre el proyecto

Landing page de una sola vista para vender el curso de japonés online de **Aruberuto Makoto**, dictado por Alberto Alonso Cividanes. El objetivo es directo: comunicar el método, generar confianza con testimonios y prueba social, y convertir al visitante en alumno inscrito.

No es un sitio informativo — es una página de venta. Cada sección empuja hacia el mismo destino: el bloque de inscripción.

## Recorrido de la página

La landing sigue una estructura clásica de venta, sección por sección:

| # | Sección | Componente | Función |
|---|---|---|---|
| 1 | Hero | `Hero.astro` | Promesa principal + video de vista previa |
| 2 | Strip | `Strip.astro` | Cinta de refuerzo / logos o datos rápidos |
| 3 | Beneficios | `Benefits.astro` | Por qué este método funciona |
| 4 | Detalles del curso | `CourseDetails.astro` | Nivel, formato de clases, método de enseñanza |
| 5 | Sensei | `Sensei.astro` | Presentación del instructor y su credibilidad |
| 6 | Testimonios | `Testimonials.astro` | Prueba social de alumnos reales |
| 7 | Precio | `Pricing.astro` | Oferta, garantía y CTA de compra |
| 8 | Bonus | `Bonus.astro` | Extras incluidos en la inscripción |
| 9 | Contacto | `Contact.astro` | Último punto de contacto antes de cerrar |
| — | Footer | `Footer.astro` | Enlaces legales y cierre |

Páginas adicionales: `/terminos` y `/privacidad`, para cubrir lo básico legal de una venta online.

## Identidad visual

La paleta y tipografía están centralizadas en `src/styles/global.css` como *design tokens* de Tailwind 4:

| Token | Valor | Uso |
|---|---|---|
| `--color-ink` | `#0d0d0d` | Fondo oscuro, texto principal |
| `--color-cream` | `#f8f6f1` | Fondo claro |
| `--color-crimson` | `#c0392b` | Color de acento, CTAs |
| `--color-crimson-dark` | `#922b21` | Hover de acento |
| `--color-muted` | `#8a8a8a` | Texto secundario |

**Tipografía:** [Shippori Mincho](https://fonts.google.com/specimen/Shippori+Mincho) para títulos (serif japonesa) y [DM Sans](https://fonts.google.com/specimen/DM+Sans) para cuerpo de texto.

Estética general: editorial, minimalista, con guiños tipográficos japoneses (kanji de fondo en el hero, colores tierra/carmesí) — evita el cliché de dojo/manga.

## Stack técnico

| Parte | Tecnología |
|---|---|
| Framework | [Astro 6](https://astro.build) en modo `server` |
| Estilos | Tailwind CSS 4 (`@tailwindcss/vite`) |
| Adaptador SSR | `@astrojs/node` (standalone) |
| Gestor de paquetes | pnpm |
| Contenedor | Docker (build multi-stage) |
| Lenguaje | TypeScript |

## Puesta en marcha

### Requisitos

- Node 22+
- pnpm

### Desarrollo local

```bash
pnpm install
pnpm dev
```

La página queda disponible en `http://localhost:4321`.

### Build y ejecución en producción

```bash
pnpm build
pnpm start
```

### Scripts disponibles

| Comando | Descripción |
|---|---|
| `pnpm dev` | Servidor de desarrollo con recarga en caliente |
| `pnpm build` | Build de producción (SSR) |
| `pnpm preview` | Sirve el build localmente para verificarlo |
| `pnpm start` | Levanta el servidor Node ya buildeado |
| `pnpm astro` | CLI de Astro |

## Docker

```bash
docker build -t aruberuto .
docker run -p 4321:4321 aruberuto
```

El `Dockerfile` usa build multi-stage (`deps` → `build` → `runtime`) sobre `node:22-alpine`, copiando al contenedor final solo `dist/`, `node_modules` y `package.json` — imagen liviana, sin herramientas de build.

## Estructura del proyecto

```
aruberuto/
├─ public/
│  └─ favicon.svg
├─ src/
│  ├─ components/       # Secciones de la landing
│  │  ├─ Hero.astro
│  │  ├─ Strip.astro
│  │  ├─ Benefits.astro
│  │  ├─ BenefitCard.astro
│  │  ├─ CourseDetails.astro
│  │  ├─ Sensei.astro
│  │  ├─ Testimonials.astro
│  │  ├─ TestimonialCard.astro
│  │  ├─ Pricing.astro
│  │  ├─ Bonus.astro
│  │  ├─ BonusItem.astro
│  │  ├─ Guarantee.astro
│  │  ├─ Contact.astro
│  │  ├─ Navbar.astro
│  │  └─ Footer.astro
│  ├─ layouts/
│  │  └─ Layout.astro   # <head>, SEO, Open Graph/Twitter, fuentes
│  ├─ pages/
│  │  ├─ index.astro
│  │  ├─ terminos.astro
│  │  └─ privacidad.astro
│  └─ styles/
│     └─ global.css     # Tokens de color y tipografía
├─ astro.config.mjs
├─ Dockerfile
└─ package.json
```

## SEO y metadata

`Layout.astro` centraliza el `<head>` de toda la página: título, descripción, canonical, y las etiquetas Open Graph / Twitter Card necesarias para que el enlace se vea bien al compartirse (redes, WhatsApp, etc.). Se configuran por props, con valores por defecto ya cargados para Aruberuto Makoto.

## Estado

Propuesta de landing page en revisión. Contenido, precios y enlaces de pago (Hotmart) sujetos a validación antes de publicación en producción.
