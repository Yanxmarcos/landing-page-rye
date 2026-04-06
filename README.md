# RYE WEB — Landing Page

Sitio web profesional construido con **Astro** y **Tailwind CSS**.

## 🚀 Stack
- [Astro](https://astro.build) — framework web estático
- [Tailwind CSS](https://tailwindcss.com) — utilidades CSS
- TypeScript

## 📁 Estructura
```
src/
├── assets/          → imágenes y SVGs del proyecto
├── components/
│   ├── common/      → Navbar, Footer, WhatsappFloat
│   ├── sections/    → Hero, Services, Process, Portfolio, About, Contact
│   ├── seo/         → componente SEO con meta tags y OG
│   └── ui/          → átomos reutilizables (Button, Card, Badge, SectionTitle)
├── data/            → contenido en TypeScript (services.ts, portfolio.ts, process.ts)
├── layouts/         → BaseLayout.astro (shell HTML base)
├── pages/           → rutas del sitio (index.astro, blog/, etc.)
├── styles/          → global.css (tokens + componentes)
└── utils/           → helpers (cn.ts, formatDate.ts)
```

## 🛠 Comandos
```bash
npm install       # instalar dependencias
npm run dev       # servidor local en localhost:4321
npm run build     # build de producción en dist/
npm run preview   # previsualizar build
```

## ✏️ Personalización
1. Edita `src/data/services.ts` para cambiar servicios
2. Edita `src/data/portfolio.ts` para agregar proyectos
3. Edita `src/data/process.ts` para los pasos del proceso
4. Edita las variables CSS en `src/styles/global.css` (colores, tipografía)
5. Cambia el número de WhatsApp en `src/components/common/WhatsappFloat.astro`

