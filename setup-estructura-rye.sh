#!/bin/bash
# ============================================================
# RYE WEB — Script de estructura de proyecto
# Ejecutar desde la raíz del repo: bash setup-estructura-rye.sh
# ============================================================

echo "🚀 Creando estructura de RYE WEB..."

# --- src/ ---
mkdir -p src/components/ui
mkdir -p src/components/sections
mkdir -p src/components/common
mkdir -p src/components/seo
mkdir -p src/layouts
mkdir -p src/pages/blog
mkdir -p src/styles
mkdir -p src/utils
mkdir -p src/data
mkdir -p src/assets/images
mkdir -p src/assets/icons

# --- public/ ---
mkdir -p public/fonts
mkdir -p public/og

echo "📁 Carpetas creadas."

# --- Componentes UI (átomos) ---
cat > src/components/ui/Button.astro << 'EOF'
---
interface Props {
  href?: string;
  variant?: 'primary' | 'secondary' | 'ghost';
  size?: 'sm' | 'md' | 'lg';
  class?: string;
}
const { href, variant = 'primary', size = 'md', class: className } = Astro.props;
const Tag = href ? 'a' : 'button';
---
<Tag
  href={href}
  class:list={['btn', `btn--${variant}`, `btn--${size}`, className]}
>
  <slot />
</Tag>
EOF

cat > src/components/ui/Card.astro << 'EOF'
---
interface Props {
  class?: string;
}
const { class: className } = Astro.props;
---
<div class:list={['card', className]}>
  <slot />
</div>
EOF

cat > src/components/ui/Badge.astro << 'EOF'
---
interface Props {
  label: string;
  color?: 'primary' | 'accent' | 'neutral';
}
const { label, color = 'primary' } = Astro.props;
---
<span class:list={['badge', `badge--${color}`]}>{label}</span>
EOF

cat > src/components/ui/SectionTitle.astro << 'EOF'
---
interface Props {
  eyebrow?: string;
  title: string;
  subtitle?: string;
  align?: 'left' | 'center';
}
const { eyebrow, title, subtitle, align = 'left' } = Astro.props;
---
<div class:list={['section-title', `section-title--${align}`]}>
  {eyebrow && <span class="section-title__eyebrow">{eyebrow}</span>}
  <h2 class="section-title__heading">{title}</h2>
  {subtitle && <p class="section-title__subtitle">{subtitle}</p>}
</div>
EOF

echo "✅ UI atoms creados."

# --- Componentes comunes ---
cat > src/components/common/Navbar.astro << 'EOF'
---
const navLinks = [
  { label: 'Servicios', href: '#servicios' },
  { label: 'Proceso', href: '#proceso' },
  { label: 'Portafolio', href: '#portafolio' },
  { label: 'Nosotros', href: '#nosotros' },
  { label: 'Blog', href: '/blog' },
  { label: 'Contacto', href: '#contacto' },
];
---
<header class="navbar" id="navbar">
  <nav class="navbar__inner container">
    <a href="/" class="navbar__logo">
      <span>RYE</span> WEB
    </a>
    <ul class="navbar__links" id="nav-menu">
      {navLinks.map(link => (
        <li><a href={link.href} class="navbar__link">{link.label}</a></li>
      ))}
    </ul>
    <button class="navbar__cta" onclick="document.getElementById('contacto').scrollIntoView({behavior:'smooth'})">
      Cotizar gratis
    </button>
    <button class="navbar__hamburger" id="hamburger" aria-label="Abrir menú">
      <span></span><span></span><span></span>
    </button>
  </nav>
</header>

<script>
  const hamburger = document.getElementById('hamburger');
  const menu = document.getElementById('nav-menu');
  hamburger?.addEventListener('click', () => {
    menu?.classList.toggle('navbar__links--open');
    hamburger.classList.toggle('navbar__hamburger--active');
  });

  // Navbar scroll effect
  const navbar = document.getElementById('navbar');
  window.addEventListener('scroll', () => {
    navbar?.classList.toggle('navbar--scrolled', window.scrollY > 40);
  });
</script>
EOF

cat > src/components/common/Footer.astro << 'EOF'
---
const currentYear = new Date().getFullYear();
---
<footer class="footer">
  <div class="footer__inner container">
    <div class="footer__brand">
      <a href="/" class="footer__logo"><span>RYE</span> WEB</a>
      <p class="footer__tagline">Tu negocio, presente en el mundo digital.</p>
    </div>
    <nav class="footer__nav">
      <a href="#servicios">Servicios</a>
      <a href="#proceso">Proceso</a>
      <a href="#portafolio">Portafolio</a>
      <a href="/blog">Blog</a>
      <a href="#contacto">Contacto</a>
    </nav>
    <p class="footer__copy">© {currentYear} RYE WEB. Todos los derechos reservados.</p>
  </div>
</footer>
EOF

cat > src/components/common/WhatsappFloat.astro << 'EOF'
---
const WHATSAPP_NUMBER = '+51920574439'; // Cambia por tu número real
const WHATSAPP_MSG = encodeURIComponent('Hola, me interesa cotizar un proyecto web.');
const WHATSAPP_URL = `https://wa.me/${WHATSAPP_NUMBER}?text=${WHATSAPP_MSG}`;
---
<a
  href={WHATSAPP_URL}
  target="_blank"
  rel="noopener noreferrer"
  class="whatsapp-float"
  aria-label="Contactar por WhatsApp"
>
  <svg width="28" height="28" viewBox="0 0 24 24" fill="currentColor">
    <path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413z"/>
  </svg>
</a>
EOF

echo "✅ Componentes comunes creados."

# --- SEO component ---
cat > src/components/seo/SEO.astro << 'EOF'
---
interface Props {
  title: string;
  description: string;
  image?: string;
  canonical?: string;
  type?: 'website' | 'article';
}

const {
  title,
  description,
  image = '/og/default.jpg',
  canonical = Astro.url.href,
  type = 'website',
} = Astro.props;

const SITE_NAME = 'RYE WEB';
const fullTitle = `${title} | ${SITE_NAME}`;
---
<!-- Primary Meta Tags -->
<title>{fullTitle}</title>
<meta name="title" content={fullTitle} />
<meta name="description" content={description} />
<link rel="canonical" href={canonical} />

<!-- Open Graph / Facebook -->
<meta property="og:type" content={type} />
<meta property="og:url" content={canonical} />
<meta property="og:title" content={fullTitle} />
<meta property="og:description" content={description} />
<meta property="og:image" content={image} />
<meta property="og:site_name" content={SITE_NAME} />

<!-- Twitter -->
<meta property="twitter:card" content="summary_large_image" />
<meta property="twitter:url" content={canonical} />
<meta property="twitter:title" content={fullTitle} />
<meta property="twitter:description" content={description} />
<meta property="twitter:image" content={image} />
EOF

echo "✅ Componente SEO creado."

# --- Layout base ---
cat > src/layouts/BaseLayout.astro << 'EOF'
---
import SEO from '../components/seo/SEO.astro';
import Navbar from '../components/common/Navbar.astro';
import Footer from '../components/common/Footer.astro';
import WhatsappFloat from '../components/common/WhatsappFloat.astro';
import '../styles/global.css';

interface Props {
  title: string;
  description: string;
  image?: string;
}

const { title, description, image } = Astro.props;
---
<!doctype html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="robots" content="index, follow" />
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />
    <SEO {title} {description} {image} />

    <!-- Schema.org JSON-LD (Local Business) -->
    <script type="application/ld+json">
    {
      "@context": "https://schema.org",
      "@type": "ProfessionalService",
      "name": "RYE WEB",
      "description": "Agencia de desarrollo web especializada en landing pages, tiendas virtuales y sistemas web a medida.",
      "url": "https://ryeweb.com",
      "sameAs": []
    }
    </script>
  </head>
  <body>
    <Navbar />
    <main>
      <slot />
    </main>
    <Footer />
    <WhatsappFloat />
  </body>
</html>
EOF

echo "✅ Layout base creado."

# --- Secciones ---
cat > src/components/sections/Hero.astro << 'EOF'
---
import Button from '../ui/Button.astro';
---
<section class="hero" id="inicio">
  <div class="hero__inner container">
    <div class="hero__content">
      <span class="hero__eyebrow">Agencia de desarrollo web</span>
      <h1 class="hero__title">
        Tu negocio merece<br />
        <span class="hero__title--accent">presencia digital real</span>
      </h1>
      <p class="hero__description">
        Creamos sitios web que convierten visitantes en clientes.
        Landing pages, tiendas online y sistemas a medida — con estrategia, diseño y resultados.
      </p>
      <div class="hero__actions">
        <Button href="#contacto" variant="primary" size="lg">Cotizar mi proyecto</Button>
        <Button href="#portafolio" variant="ghost" size="lg">Ver trabajos</Button>
      </div>
    </div>
    <div class="hero__visual" aria-hidden="true">
      <!-- Aquí va tu ilustración o mockup -->
    </div>
  </div>
</section>
EOF

cat > src/components/sections/Services.astro << 'EOF'
---
import Card from '../ui/Card.astro';
import SectionTitle from '../ui/SectionTitle.astro';
import { services } from '../../data/services';
---
<section class="services section" id="servicios">
  <div class="container">
    <SectionTitle
      eyebrow="Lo que hacemos"
      title="Servicios que impulsan tu crecimiento"
      subtitle="Desde una página de aterrizaje hasta un sistema web complejo — construimos con propósito."
      align="center"
    />
    <div class="services__grid">
      {services.map(service => (
        <Card class="service-card">
          <span class="service-card__icon" aria-hidden="true">{service.icon}</span>
          <h3 class="service-card__title">{service.title}</h3>
          <p class="service-card__description">{service.description}</p>
        </Card>
      ))}
    </div>
  </div>
</section>
EOF

cat > src/components/sections/Process.astro << 'EOF'
---
import SectionTitle from '../ui/SectionTitle.astro';
import { processSteps } from '../../data/process';
---
<section class="process section" id="proceso">
  <div class="container">
    <SectionTitle
      eyebrow="Cómo trabajamos"
      title="Un proceso claro, sin sorpresas"
      align="center"
    />
    <ol class="process__steps">
      {processSteps.map((step, i) => (
        <li class="process__step">
          <span class="process__number">{String(i + 1).padStart(2, '0')}</span>
          <div class="process__content">
            <h3 class="process__step-title">{step.title}</h3>
            <p class="process__step-desc">{step.description}</p>
          </div>
        </li>
      ))}
    </ol>
  </div>
</section>
EOF

cat > src/components/sections/Portfolio.astro << 'EOF'
---
import SectionTitle from '../ui/SectionTitle.astro';
import Button from '../ui/Button.astro';
import { projects } from '../../data/portfolio';
---
<section class="portfolio section" id="portafolio">
  <div class="container">
    <SectionTitle
      eyebrow="Casos de éxito"
      title="Proyectos que hablan por sí solos"
      align="center"
    />
    <div class="portfolio__grid">
      {projects.map(project => (
        <article class="portfolio-card">
          <div class="portfolio-card__image">
            <img src={project.image} alt={project.title} loading="lazy" />
          </div>
          <div class="portfolio-card__body">
            <span class="portfolio-card__category">{project.category}</span>
            <h3 class="portfolio-card__title">{project.title}</h3>
            <p class="portfolio-card__desc">{project.description}</p>
          </div>
        </article>
      ))}
    </div>
    <div class="portfolio__cta">
      <Button href="#contacto" variant="primary">Quiero un proyecto así</Button>
    </div>
  </div>
</section>
EOF

cat > src/components/sections/About.astro << 'EOF'
---
import SectionTitle from '../ui/SectionTitle.astro';
---
<section class="about section" id="nosotros">
  <div class="container about__inner">
    <div class="about__content">
      <SectionTitle
        eyebrow="Quiénes somos"
        title="Construimos tu presencia digital con estrategia"
      />
      <p class="about__text">
        En RYE WEB no solo escribimos código — entendemos tu negocio, tu público y tus metas.
        Cada proyecto parte de un diagnóstico real para entregar resultados medibles.
      </p>
      <ul class="about__values">
        <li>✦ Estrategia antes que diseño</li>
        <li>✦ Comunicación clara en cada etapa</li>
        <li>✦ Código limpio y mantenible</li>
        <li>✦ Resultados, no promesas</li>
      </ul>
    </div>
    <div class="about__visual" aria-hidden="true">
      <!-- Foto de equipo o ilustración -->
    </div>
  </div>
</section>
EOF

cat > src/components/sections/Contact.astro << 'EOF'
---
const WHATSAPP = '+51920574439;
const EMAIL = 'hola@ryeweb.com';
---
<section class="contact section" id="contacto">
  <div class="container">
    <div class="contact__inner">
      <h2 class="contact__title">¿Listo para empezar?</h2>
      <p class="contact__subtitle">Cuéntanos tu proyecto — sin compromiso.</p>
      <div class="contact__channels">
        <a href={`https://wa.me/${WHATSAPP}`} class="contact__channel contact__channel--whatsapp" target="_blank" rel="noopener">
          <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413z"/></svg>
          WhatsApp
        </a>
        <a href={`mailto:${EMAIL}`} class="contact__channel contact__channel--email">
          <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5"><path d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"/></svg>
          Correo
        </a>
      </div>
    </div>
  </div>
</section>
EOF

echo "✅ Secciones creadas."

# --- Data files ---
cat > src/data/services.ts << 'EOF'
export interface Service {
  icon: string;
  title: string;
  description: string;
}

export const services: Service[] = [
  {
    icon: '⚡',
    title: 'Landing Pages',
    description: 'Páginas de aterrizaje optimizadas para capturar leads y convertir visitantes en clientes desde el primer clic.',
  },
  {
    icon: '🛒',
    title: 'Tiendas Virtuales',
    description: 'E-commerce completo con pasarela de pago segura, gestión de inventario y experiencia de compra fluida.',
  },
  {
    icon: '🌐',
    title: 'Páginas Web Corporativas',
    description: 'Sitios institucionales que transmiten credibilidad y narran la historia de tu marca con impacto.',
  },
  {
    icon: '🎓',
    title: 'Aulas Virtuales',
    description: 'Plataformas de e-learning interactivas para cursos, capacitaciones y comunidades de aprendizaje.',
  },
  {
    icon: '⚙️',
    title: 'Sistemas Web',
    description: 'Aplicaciones a medida para optimizar procesos internos, CRMs y paneles de administración personalizados.',
  },
  {
    icon: '🔍',
    title: 'SEO & Posicionamiento',
    description: 'Estrategia de visibilidad orgánica integrada desde la estructura del sitio hasta el contenido.',
  },
];
EOF

cat > src/data/process.ts << 'EOF'
export interface ProcessStep {
  title: string;
  description: string;
}

export const processSteps: ProcessStep[] = [
  {
    title: 'Diagnóstico',
    description: 'Analizamos tus objetivos, tu público objetivo y tu propuesta de valor para construir sobre bases sólidas.',
  },
  {
    title: 'Estrategia & Diseño',
    description: 'Creamos la arquitectura de información y el diseño visual alineado con tu identidad de marca.',
  },
  {
    title: 'Desarrollo',
    description: 'Programamos con tecnologías modernas, rápidas y mantenibles. Clean code desde el primer commit.',
  },
  {
    title: 'Revisión & Ajustes',
    description: 'Iteramos contigo hasta que el resultado supere tus expectativas. Feedback claro, cambios reales.',
  },
  {
    title: 'Lanzamiento',
    description: 'Publicamos, verificamos rendimiento, SEO y seguridad. Tu sitio sale a internet listo para competir.',
  },
];
EOF

cat > src/data/portfolio.ts << 'EOF'
export interface Project {
  title: string;
  category: string;
  description: string;
  image: string;
  url?: string;
}

export const projects: Project[] = [
  {
    title: 'Nombre del proyecto',
    category: 'Landing Page',
    description: 'Descripción breve del resultado logrado para el cliente.',
    image: '/images/proyecto-01.jpg',
  },
  // Agrega más proyectos aquí
];
EOF

echo "✅ Archivos de datos creados."

# --- Global CSS ---
cat > src/styles/global.css << 'EOF'
@import "tailwindcss";

/* ============================================================
   RYE WEB — Sistema de diseño global
   Tokens → Base → Componentes → Utilidades
============================================================ */

/* --- Tokens ------------------------------------------------ */
:root {
  --color-primary:     #0A0A0A;
  --color-accent:      #E8FF47;   /* amarillo eléctrico — ajusta a tu marca */
  --color-accent-2:    #1DFF9F;   /* verde neón complementario */
  --color-surface:     #111111;
  --color-surface-2:   #1A1A1A;
  --color-text:        #F5F5F0;
  --color-text-muted:  #888880;
  --color-border:      rgba(255,255,255,0.08);

  --font-sans:   'General Sans', system-ui, sans-serif;
  --font-display:'Syne', var(--font-sans);

  --radius-sm:   6px;
  --radius-md:   12px;
  --radius-lg:   20px;
  --radius-full: 9999px;

  --transition: 0.25s cubic-bezier(0.16, 1, 0.3, 1);

  --container-max: 1200px;
  --container-px:  clamp(1.25rem, 5vw, 3rem);

  --section-py: clamp(4rem, 10vw, 8rem);
}

/* --- Reset base -------------------------------------------- */
*, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

html {
  font-size: 16px;
  scroll-behavior: smooth;
  -webkit-font-smoothing: antialiased;
}

body {
  background: var(--color-primary);
  color: var(--color-text);
  font-family: var(--font-sans);
  line-height: 1.6;
}

img, video { max-width: 100%; display: block; }
a { color: inherit; text-decoration: none; }

/* --- Layout helpers --------------------------------------- */
.container {
  width: 100%;
  max-width: var(--container-max);
  margin-inline: auto;
  padding-inline: var(--container-px);
}

.section {
  padding-block: var(--section-py);
}

/* --- Navbar ----------------------------------------------- */
.navbar {
  position: fixed;
  top: 0; left: 0; right: 0;
  z-index: 100;
  padding: 1.25rem 0;
  transition: background var(--transition), backdrop-filter var(--transition);
}

.navbar--scrolled {
  background: rgba(10,10,10,0.85);
  backdrop-filter: blur(12px);
  padding: 0.875rem 0;
  border-bottom: 1px solid var(--color-border);
}

.navbar__inner {
  display: flex;
  align-items: center;
  gap: 2rem;
}

.navbar__logo {
  font-family: var(--font-display);
  font-size: 1.25rem;
  font-weight: 700;
  letter-spacing: -0.02em;
}

.navbar__logo span { color: var(--color-accent); }

.navbar__links {
  display: flex;
  list-style: none;
  gap: 2rem;
  margin-left: auto;
}

.navbar__link {
  font-size: 0.9rem;
  color: var(--color-text-muted);
  transition: color var(--transition);
}

.navbar__link:hover { color: var(--color-text); }

.navbar__cta {
  background: var(--color-accent);
  color: var(--color-primary);
  border: none;
  border-radius: var(--radius-full);
  padding: 0.625rem 1.5rem;
  font-weight: 600;
  font-size: 0.875rem;
  cursor: pointer;
  transition: opacity var(--transition), transform var(--transition);
}

.navbar__cta:hover { opacity: 0.9; transform: translateY(-1px); }

.navbar__hamburger {
  display: none;
  flex-direction: column;
  gap: 5px;
  background: none;
  border: none;
  cursor: pointer;
  padding: 4px;
}

.navbar__hamburger span {
  display: block;
  width: 24px;
  height: 2px;
  background: var(--color-text);
  border-radius: 2px;
  transition: var(--transition);
}

/* --- Hero ------------------------------------------------- */
.hero {
  min-height: 100svh;
  display: flex;
  align-items: center;
  padding-top: 5rem;
}

.hero__inner {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 4rem;
  align-items: center;
}

.hero__eyebrow {
  display: inline-block;
  font-size: 0.8rem;
  font-weight: 600;
  letter-spacing: 0.1em;
  text-transform: uppercase;
  color: var(--color-accent);
  margin-bottom: 1.25rem;
  padding: 0.375rem 1rem;
  border: 1px solid rgba(232,255,71,0.3);
  border-radius: var(--radius-full);
}

.hero__title {
  font-family: var(--font-display);
  font-size: clamp(2.5rem, 5vw, 4.5rem);
  font-weight: 700;
  line-height: 1.05;
  letter-spacing: -0.03em;
  margin-bottom: 1.5rem;
}

.hero__title--accent { color: var(--color-accent); }

.hero__description {
  font-size: 1.125rem;
  color: var(--color-text-muted);
  max-width: 50ch;
  margin-bottom: 2.5rem;
  line-height: 1.7;
}

.hero__actions { display: flex; gap: 1rem; flex-wrap: wrap; }

/* --- Botones ----------------------------------------------- */
.btn {
  display: inline-flex;
  align-items: center;
  gap: 0.5rem;
  border-radius: var(--radius-full);
  font-weight: 600;
  transition: all var(--transition);
  cursor: pointer;
  border: none;
  text-decoration: none;
}

.btn--sm  { padding: 0.5rem 1.25rem;  font-size: 0.875rem; }
.btn--md  { padding: 0.75rem 1.75rem; font-size: 0.9375rem; }
.btn--lg  { padding: 0.875rem 2rem;   font-size: 1rem; }

.btn--primary { background: var(--color-accent); color: var(--color-primary); }
.btn--primary:hover { opacity: 0.9; transform: translateY(-2px); }

.btn--secondary {
  background: var(--color-surface-2);
  color: var(--color-text);
  border: 1px solid var(--color-border);
}
.btn--secondary:hover { border-color: rgba(255,255,255,0.2); }

.btn--ghost {
  background: transparent;
  color: var(--color-text);
  border: 1px solid var(--color-border);
}
.btn--ghost:hover { background: var(--color-surface-2); }

/* --- Cards ------------------------------------------------- */
.card {
  background: var(--color-surface);
  border: 1px solid var(--color-border);
  border-radius: var(--radius-lg);
  padding: 2rem;
  transition: border-color var(--transition), transform var(--transition);
}

.card:hover {
  border-color: rgba(255,255,255,0.15);
  transform: translateY(-4px);
}

/* --- SectionTitle ----------------------------------------- */
.section-title { margin-bottom: 3.5rem; }
.section-title--center { text-align: center; }

.section-title__eyebrow {
  display: inline-block;
  font-size: 0.75rem;
  font-weight: 700;
  letter-spacing: 0.12em;
  text-transform: uppercase;
  color: var(--color-accent);
  margin-bottom: 1rem;
}

.section-title__heading {
  font-family: var(--font-display);
  font-size: clamp(1.75rem, 3.5vw, 3rem);
  font-weight: 700;
  letter-spacing: -0.025em;
  line-height: 1.15;
  margin-bottom: 1rem;
}

.section-title__subtitle {
  font-size: 1.0625rem;
  color: var(--color-text-muted);
  max-width: 55ch;
  line-height: 1.7;
}

.section-title--center .section-title__subtitle { margin-inline: auto; }

/* --- Services --------------------------------------------- */
.services__grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
  gap: 1.5rem;
}

.service-card__icon { font-size: 2rem; display: block; margin-bottom: 1rem; }
.service-card__title { font-size: 1.1rem; font-weight: 600; margin-bottom: 0.625rem; }
.service-card__description { color: var(--color-text-muted); font-size: 0.9375rem; line-height: 1.65; }

/* --- Process ---------------------------------------------- */
.process__steps { list-style: none; display: flex; flex-direction: column; gap: 0; }

.process__step {
  display: flex;
  gap: 2rem;
  align-items: flex-start;
  padding: 2rem 0;
  border-bottom: 1px solid var(--color-border);
}

.process__number {
  font-family: var(--font-display);
  font-size: 0.75rem;
  font-weight: 700;
  color: var(--color-accent);
  letter-spacing: 0.05em;
  min-width: 2.5rem;
  padding-top: 0.3rem;
}

.process__step-title { font-size: 1.1rem; font-weight: 600; margin-bottom: 0.5rem; }
.process__step-desc { color: var(--color-text-muted); font-size: 0.9375rem; }

/* --- Portfolio -------------------------------------------- */
.portfolio__grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(340px, 1fr));
  gap: 1.5rem;
  margin-bottom: 3rem;
}

.portfolio-card {
  background: var(--color-surface);
  border: 1px solid var(--color-border);
  border-radius: var(--radius-lg);
  overflow: hidden;
  transition: transform var(--transition), border-color var(--transition);
}

.portfolio-card:hover { transform: translateY(-4px); border-color: rgba(255,255,255,0.15); }

.portfolio-card__image { aspect-ratio: 16/9; overflow: hidden; }
.portfolio-card__image img { width: 100%; height: 100%; object-fit: cover; transition: transform 0.4s; }
.portfolio-card:hover .portfolio-card__image img { transform: scale(1.03); }

.portfolio-card__body { padding: 1.5rem; }
.portfolio-card__category { font-size: 0.75rem; font-weight: 600; color: var(--color-accent); text-transform: uppercase; letter-spacing: 0.08em; }
.portfolio-card__title { font-size: 1.1rem; font-weight: 600; margin: 0.5rem 0; }
.portfolio-card__desc { color: var(--color-text-muted); font-size: 0.9rem; }

.portfolio__cta { text-align: center; }

/* --- About ------------------------------------------------ */
.about__inner {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 5rem;
  align-items: center;
}

.about__text { color: var(--color-text-muted); margin-block: 1.25rem; line-height: 1.7; }

.about__values { list-style: none; display: flex; flex-direction: column; gap: 0.75rem; }
.about__values li { font-size: 0.9375rem; color: var(--color-text-muted); }

/* --- Contact ---------------------------------------------- */
.contact { background: var(--color-surface); }

.contact__inner {
  text-align: center;
  max-width: 560px;
  margin-inline: auto;
}

.contact__title {
  font-family: var(--font-display);
  font-size: clamp(1.75rem, 3.5vw, 3rem);
  font-weight: 700;
  letter-spacing: -0.025em;
  margin-bottom: 1rem;
}

.contact__subtitle { color: var(--color-text-muted); margin-bottom: 2.5rem; }

.contact__channels { display: flex; gap: 1rem; justify-content: center; flex-wrap: wrap; }

.contact__channel {
  display: flex;
  align-items: center;
  gap: 0.625rem;
  padding: 0.875rem 2rem;
  border-radius: var(--radius-full);
  font-weight: 600;
  font-size: 0.9375rem;
  transition: all var(--transition);
  border: 1px solid var(--color-border);
}

.contact__channel--whatsapp { background: #25D366; color: #fff; border-color: #25D366; }
.contact__channel--whatsapp:hover { background: #22c05e; }
.contact__channel--email:hover { background: var(--color-surface-2); }

/* --- WhatsApp flotante ------------------------------------ */
.whatsapp-float {
  position: fixed;
  bottom: 2rem;
  right: 2rem;
  z-index: 99;
  width: 56px;
  height: 56px;
  border-radius: 50%;
  background: #25D366;
  color: #fff;
  display: flex;
  align-items: center;
  justify-content: center;
  box-shadow: 0 4px 20px rgba(37,211,102,0.4);
  transition: transform var(--transition);
}

.whatsapp-float:hover { transform: scale(1.08); }

/* --- Footer ----------------------------------------------- */
.footer { border-top: 1px solid var(--color-border); padding: 3rem 0; }

.footer__inner {
  display: flex;
  flex-direction: column;
  gap: 1.5rem;
  align-items: center;
  text-align: center;
}

.footer__logo { font-family: var(--font-display); font-weight: 700; font-size: 1.1rem; }
.footer__logo span { color: var(--color-accent); }
.footer__tagline { color: var(--color-text-muted); font-size: 0.875rem; margin-top: 0.25rem; }

.footer__nav { display: flex; gap: 1.5rem; flex-wrap: wrap; justify-content: center; }
.footer__nav a { color: var(--color-text-muted); font-size: 0.875rem; transition: color var(--transition); }
.footer__nav a:hover { color: var(--color-text); }

.footer__copy { color: var(--color-text-muted); font-size: 0.8rem; }

/* --- Responsive ------------------------------------------- */
@media (max-width: 768px) {
  .hero__inner    { grid-template-columns: 1fr; }
  .hero__visual   { display: none; }
  .about__inner   { grid-template-columns: 1fr; }
  .navbar__links  { display: none; }
  .navbar__hamburger { display: flex; margin-left: auto; }
  .navbar__cta    { display: none; }

  .navbar__links--open {
    display: flex;
    flex-direction: column;
    position: fixed;
    top: 0; left: 0; right: 0; bottom: 0;
    background: var(--color-primary);
    justify-content: center;
    align-items: center;
    gap: 2.5rem;
    font-size: 1.5rem;
    z-index: 99;
  }
}
EOF

echo "✅ CSS global creado."

# --- Página principal ---
cat > src/pages/index.astro << 'EOF'
---
import BaseLayout from '../layouts/BaseLayout.astro';
import Hero from '../components/sections/Hero.astro';
import Services from '../components/sections/Services.astro';
import Process from '../components/sections/Process.astro';
import Portfolio from '../components/sections/Portfolio.astro';
import About from '../components/sections/About.astro';
import Contact from '../components/sections/Contact.astro';
---
<BaseLayout
  title="Agencia de Desarrollo Web"
  description="RYE WEB crea sitios web profesionales que convierten visitantes en clientes. Landing pages, tiendas virtuales y sistemas a medida."
>
  <Hero />
  <Services />
  <Process />
  <Portfolio />
  <About />
  <Contact />
</BaseLayout>
EOF

# --- Utils ---
cat > src/utils/cn.ts << 'EOF'
/** Joins class names, filtering falsy values */
export function cn(...classes: (string | undefined | false | null)[]): string {
  return classes.filter(Boolean).join(' ');
}
EOF

cat > src/utils/formatDate.ts << 'EOF'
/** Formats a date to readable Spanish string */
export function formatDate(date: Date | string): string {
  return new Intl.DateTimeFormat('es-PE', {
    year: 'numeric',
    month: 'long',
    day: 'numeric',
  }).format(new Date(date));
}
EOF

echo "✅ Utils creados."

# --- README ---
cat > README.md << 'EOF'
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
EOF

echo ""
echo "============================================================"
echo "✅ Estructura de RYE WEB creada exitosamente."
echo ""
echo "📋 Próximos pasos:"
echo "  1. Instala dependencias de Tailwind v4:"
echo "     npm install tailwindcss @astrojs/tailwind"
echo ""
echo "  2. Instala fuentes (General Sans + Syne):"
echo "     npm install @fontsource/syne"
echo "     O usa Google Fonts en tu BaseLayout.astro"
echo ""
echo "  3. Corre el servidor de desarrollo:"
echo "     npm run dev"
echo ""
echo "  4. Personaliza tus datos en src/data/"
echo "============================================================"
