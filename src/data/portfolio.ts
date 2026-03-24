export type PortfolioCategory =
  | 'Landing'
  | 'Ecommerce'
  | 'Corporativo'
  | 'Elearning'
  | 'Sistema';

export type CardSize = 'normal' | 'tall' | 'wide';

export interface PortfolioResult {
  value: string;
  label: string;
}

export interface PortfolioProject {
  id:          number;
  category:    PortfolioCategory;
  categoryLabel: string;
  title:       string;
  description: string;
  tags:        string[];
  results:     PortfolioResult[];
  size:        CardSize;
  // Imagen real: pon la ruta aquí cuando tengas el screenshot
  // Ej: '/images/portfolio/sabores-del-norte.jpg'
  image?:      string;
  // URL del sitio en vivo del cliente
  url?:        string;
  // Acento de color para el placeholder y el modal (rgba)
  accent:      string;
  // Texto corto de resultado para el overlay (ej: "+240% ventas · 3 meses")
  resultPreview: string;
}

export const projects: PortfolioProject[] = [
  // ——— Agrega aquí tus proyectos reales ———
  // Formato de ejemplo completo:
  //
  // {
  //   id:             1,
  //   category:       'Ecommerce',
  //   categoryLabel:  'E-commerce · Destacado',
  //   title:          'Sabores del Norte',
  //   description:    'Tienda virtual completa para negocio gastronómico. Incluye pasarela Culqi, gestión de inventario, carrito optimizado y notificaciones por WhatsApp. Diseñada 100% para móvil.',
  //   tags:           ['Astro', 'Tailwind', 'Culqi', 'WhatsApp API', 'SEO'],
  //   results: [
  //     { value: '+240%', label: 'Ventas online' },
  //     { value: '0.9s',  label: 'Carga inicial' },
  //     { value: '98',    label: 'Lighthouse' },
  //   ],
  //   size:          'tall',   // 'tall' ocupa 2 filas (proyecto destacado)
  //   image:         '/images/portfolio/sabores-del-norte.jpg', // opcional
  //   url:           'https://saboresdelnoirte.pe',
  //   accent:        'rgba(91,79,212,0.1)',
  //   resultPreview: '+240% ventas online · 3 meses',
  // },
];

// Paleta de acentos sugerida por categoría:
// Landing    → 'rgba(30,159,232,0.08)'   azul
// Ecommerce  → 'rgba(91,79,212,0.1)'     violeta
// Corporativo→ 'rgba(29,158,117,0.08)'   verde
// Elearning  → 'rgba(239,159,39,0.08)'   ámbar
// Sistema    → ' rgba(212,83,126,0.08)'   rosa