<div align="center">

# 日本語 Aruberuto Makoto

**Landing page — online Japanese course**

</div>

---

## About the project

Single-view landing page to sell **Aruberuto Makoto**'s online Japanese course, taught by Alberto Alonso Cividanes. The goal is direct: communicate the method, build trust through testimonials and social proof, and convert the visitor into an enrolled student.

It's not an informational site, it's a sales page. Every section pushes toward the same destination: the enrollment block.

---

## What's included

- **Hero** with the main promise and a preview video
- **Benefits** of the method
- **Course details**: level, class format, methodology
- **Sensei**: instructor introduction
- **Testimonials** from students
- **Pricing**, guarantee and purchase CTA
- **Bonuses** included with enrollment
- **Contact** and footer with legal links
- `/terminos` and `/privacidad` pages

---

## Tech Stack

![Astro](https://img.shields.io/badge/Astro-BC52EE?style=flat-square&logo=astro&logoColor=white)
![Tailwind CSS](https://img.shields.io/badge/Tailwind-06B6D4?style=flat-square&logo=tailwindcss&logoColor=white)
![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?style=flat-square&logo=typescript&logoColor=white)
![Node.js](https://img.shields.io/badge/Node.js-339933?style=flat-square&logo=node.js&logoColor=white)
![pnpm](https://img.shields.io/badge/pnpm-F69220?style=flat-square&logo=pnpm&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white)

Astro 6 in `server` mode, with the `@astrojs/node` (standalone) adapter and Tailwind CSS 4. Color palette and typography centralized in `src/styles/global.css`: Japanese serif **Shippori Mincho** for headings, **DM Sans** for body text.

---

## Getting started

```bash
pnpm install
pnpm dev
```

Available at `http://localhost:4321`.

Production build and run:

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

Multi-stage build (`deps` → `build` → `runtime`) on `node:22-alpine`. The final image only ships `dist/`, `node_modules` and `package.json`.

---

## Structure

```
src/
├─ components/    # Landing sections (Hero, Pricing, Sensei, etc.)
├─ layouts/       # Layout.astro — head, SEO, Open Graph/Twitter, fonts
├─ pages/         # index, terminos, privacidad
└─ styles/        # Color and typography tokens
```

---

## Status

Proposal under review. Content, pricing and payment link (Hotmart) subject to validation before going to production.
