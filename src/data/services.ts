export interface Service {
  tag:         string;
  title:       string;
  description: string;
  benefits:    string[];
  priceFrom:   string;
  delivery:    string;
}

export const services: Service[] = [
  {
    tag:         'Landing Page',
    title:       'Páginas de aterrizaje',
    description: 'Diseñadas para convertir desde el primer scroll con estructura y copy probados.',
    benefits: [
      'Diseño orientado a conversión y UX',
      'Copy estratégico y llamadas a la acción',
      'SEO técnico y velocidad 90+ en Lighthouse',
      'Integración con WhatsApp y formularios',
    ],
    priceFrom: 'S/ 800',
    delivery:  'Entrega en 7–10 días',
  },
  {
    tag:         'E-commerce',
    title:       'Tiendas virtuales',
    description: 'Vende 24/7 con pasarela segura, inventario y experiencia de compra fluida.',
    benefits: [
      'Pasarela de pago (Culqi, PayPal, Yape)',
      'Panel de administración de productos',
      'Carrito y checkout optimizado',
      'Notificaciones por email y WhatsApp',
    ],
    priceFrom: 'S/ 2,500',
    delivery:  'Entrega en 20–30 días',
  },
  {
    tag:         'Corporativo',
    title:       'Páginas web completas',
    description: 'Tu marca en digital con credibilidad, claridad y narrativa que conecta.',
    benefits: [
      'Múltiples páginas y secciones a medida',
      'Blog o noticias integrado',
      'Panel de administración de contenido',
      'SEO multipage y Google Analytics',
    ],
    priceFrom: 'S/ 1,800',
    delivery:  'Entrega en 15–20 días',
  },
  {
    tag:         'E-learning',
    title:       'Aulas virtuales',
    description: 'Plataformas educativas para cursos, capacitaciones y comunidades online.',
    benefits: [
      'Gestión de cursos, módulos y lecciones',
      'Sistema de pagos y suscripciones',
      'Progreso del alumno y certificados',
      'Integración con Zoom o videos propios',
    ],
    priceFrom: 'S/ 3,500',
    delivery:  'Entrega en 30–45 días',
  },
  {
    tag:         'Sistema',
    title:       'Sistemas web a medida',
    description: 'CRMs, paneles y automatizaciones. Código limpio que escala con tu operación.',
    benefits: [
      'Análisis de requerimientos y arquitectura',
      'Panel de administración a medida',
      'Roles, permisos y autenticación segura',
      'API REST e integraciones con terceros',
    ],
    priceFrom: 'S/ 5,000',
    delivery:  'Cotización personalizada',
  },
  {
    tag:         'SEO',
    title:       'Posicionamiento orgánico',
    description: 'Visibilidad real en Google. SEO técnico integrado desde el día uno del proyecto.',
    benefits: [
      'Auditoría SEO técnica completa',
      'Investigación de palabras clave',
      'Optimización de velocidad y Core Web Vitals',
      'Google Search Console y Analytics',
    ],
    priceFrom: 'S/ 600',
    delivery:  'Plan mensual disponible',
  },
];