export interface ServiceFeature {
  icon: string; // Nombre del ícono para usar en tu frontend (ej: 'shopping-cart', 'chart')
  title: string;
  description: string;
}

export interface TargetAudience {
  role: string;
  focus: string;
}

export interface Service {
  tag: string;
  title: string;
  slug: string; // Añadimos el slug directamente aquí para evitar errores de ruteo
  description: string; // Descripción corta para el Hero
  detailedDescription: string; // Texto principal de venta
  targetAudience: TargetAudience[]; // "Para quién es"
  features: ServiceFeature[]; // Cuadrículas con íconos
  benefits: string[]; // Lista rápida
  priceFrom: string;
  delivery: string;
}

export const services: Service[] = [
  {
    tag: 'Landing Page',
    title: 'Páginas de aterrizaje',
    slug: 'paginas-de-aterrizaje',
    description: 'Diseñadas para convertir desde el primer scroll con estructura y copy probados.',
    detailedDescription: 'No necesitas una web bonita, necesitas una máquina de ventas. Nuestras landing pages están estructuradas psicológicamente para guiar al usuario hacia una única acción: contactarte o comprar.',
    targetAudience: [
      { role: 'Lanzamientos', focus: 'Captación masiva de leads para infoproductos.' },
      { role: 'Servicios B2B', focus: 'Agendar llamadas de consultoría cualificadas.' },
      { role: 'Campañas Ads', focus: 'Maximizar el ROAS de tus anuncios en Meta/Google.' }
    ],
    features: [
      { icon: 'speed', title: 'Velocidad Extrema', description: 'Optimizada para cargar en menos de 2 segundos. Menos rebote, más clientes.' },
      { icon: 'copy', title: 'Copy Persuasivo', description: 'Textos redactados enfocados en los puntos de dolor y soluciones de tu cliente.' },
      { icon: 'mobile', title: 'Mobile-First', description: 'El 80% del tráfico es móvil. Tu landing se verá perfecta en cualquier pantalla.' }
    ],
    benefits: [
      'Diseño orientado a conversión y UX',
      'Copy estratégico y llamadas a la acción',
      'SEO técnico y velocidad 90+ en Lighthouse',
      'Integración con WhatsApp y CRM'
    ],
    priceFrom: 'S/ 150',
    delivery: 'Entrega en 7–10 días',
  },
  {
    tag: 'E-commerce',
    title: 'Tiendas virtuales',
    slug: 'tiendas-virtuales',
    description: 'Vende 24/7 con pasarela segura, inventario y experiencia de compra fluida.',
    detailedDescription: 'Transformamos tu inventario en una sucursal digital que nunca duerme. Evita los cuellos de botella de vender por WhatsApp y automatiza tus ingresos con un e-commerce robusto, seguro y fácil de administrar.',
    targetAudience: [
      { role: 'Retailers', focus: 'Marcas de ropa, tecnología o productos físicos.' },
      { role: 'Mayoristas', focus: 'Catálogos dinámicos con precios por volumen.' },
      { role: 'Emprendedores', focus: 'Lleva tu negocio de Instagram al siguiente nivel profesional.' }
    ],
    features: [
      { icon: 'cart', title: 'Carrito Optimizado', description: 'Proceso de pago en 3 pasos (Checkout rápido) para reducir carritos abandonados.' },
      { icon: 'security', title: 'Pasarelas Seguras', description: 'Integración oficial con Transferencia Bancaria, Plin, PayPal y Yape.' },
      { icon: 'dashboard', title: 'Gestión Total', description: 'Panel intuitivo para subir productos, controlar stock y ver métricas en tiempo real.' }
    ],
    benefits: [
      'Sin comisiones ocultas por venta',
      'Panel de administración de productos',
      'Cupones de descuento programables',
      'Notificaciones automáticas por email'
    ],
    priceFrom: 'S/ 500',
    delivery: 'Entrega en 20–30 días',
  },
  {
    tag: 'Corporativo',
    title: 'Página web corporativa',
    slug: 'pagina-web-corporativa',
    description: 'Tu carta de presentación digital. Transmite confianza, profesionalismo y atrae a los clientes correctos.',
    detailedDescription: 'Más que un folleto en línea. Construimos sitios corporativos que funcionan como el centro de tu estrategia digital, comunicando tus valores, mostrando tu experiencia y convirtiéndose en una herramienta clave para tu equipo de ventas.',
    targetAudience: [
      { role: 'Empresas B2B', focus: 'Generar confianza y presentar casos de éxito.' },
      { role: 'Estudios profesionales', focus: 'Posicionar la marca personal de abogados, contadores, etc.' },
      { role: 'Startups', focus: 'Validar la idea de negocio y atraer inversores.' }
    ],
    features: [
      { icon: 'building', title: 'Diseño Institucional', description: 'Una estética que refleja la solidez y valores de tu marca.' },
      { icon: 'blog', title: 'Blog Integrado', description: 'Atrae tráfico orgánico y posiciona tu empresa como líder de opinión.' },
      { icon: 'team', title: 'Sección "Equipo"', description: 'Humaniza tu marca y presenta a los profesionales detrás del éxito.' }
    ],
    benefits: [
      'Diseño a medida que refleja tu identidad de marca',
      'Secciones clave: Nosotros, Servicios, Blog, Contacto',
      'Optimización para motores de búsqueda (SEO On-page)',
      'Panel de gestión de contenidos (CMS) opcional'
    ],
    priceFrom: 'S/ 800',
    delivery: 'Entrega en 15–25 días',
  },
  {
    tag: 'E-learning',
    title: 'Aula virtual / E-learning',
    slug: 'aulas-virtuales',
    description: 'Monetiza tu conocimiento con una plataforma de cursos online robusta y fácil de usar para tus alumnos.',
    detailedDescription: 'Deja de depender de plataformas de terceros que se quedan con un gran porcentaje de tus ganancias. Te entregamos un aula virtual propia, con tu marca, donde tienes control total sobre el contenido, los precios y la experiencia de tus estudiantes.',
    targetAudience: [
      { role: 'Coaches y Consultores', focus: 'Vender cursos grabados y automatizar la entrega.' },
      { role: 'Academias e Institutos', focus: 'Digitalizar su oferta educativa y alcanzar más alumnos.' },
      { role: 'Empresas', focus: 'Capacitación interna para equipos de forma escalable.' }
    ],
    features: [
      { icon: 'video', title: 'Lecciones en Video', description: 'Sube tus videos en alta calidad con protección de contenido.' },
      { icon: 'certificate', title: 'Certificados Automáticos', description: 'Genera y envía diplomas personalizados al completar un curso.' },
      { icon: 'payment', title: 'Pagos Integrados', description: 'Acepta pagos únicos o suscripciones recurrentes con facilidad.' }
    ],
    benefits: [
      'Progreso del alumno y seguimiento',
      'Cuestionarios y evaluaciones por lección',
      'Integración de pasarelas de pago locales',
      'Tu propia marca, sin comisiones externas'
    ],
    priceFrom: 'S/ 1200',
    delivery: 'Entrega en 25–40 días',
  },
  {
    tag: 'Sistema',
    title: 'Sistema web a medida',
    slug: 'sistemas-web-a-medida',
    description: 'Automatiza procesos, reduce costos y obtén control total de tu operación con un software en la nube.',
    detailedDescription: 'Si Excel y WhatsApp ya no son suficientes para gestionar tu negocio, necesitas un sistema a medida. Desarrollamos herramientas internas (CRM, ERP, etc.) que se adaptan como un guante a tus procesos, eliminando cuellos de botella y dándote datos en tiempo real para tomar mejores decisiones.',
    targetAudience: [
      { role: 'Gerentes de Operaciones', focus: 'Optimizar flujos de trabajo y reducir errores manuales.' },
      { role: 'Negocios en Crecimiento', focus: 'Escalar la operación sin perder el control.' },
      { role: 'Empresas con Procesos Únicos', focus: 'Soluciones que el software estándar no puede ofrecer.' }
    ],
    features: [
      { icon: 'dashboard', title: 'Dashboard de Métricas', description: 'Visualiza los KPIs más importantes de tu negocio en tiempo real.' },
      { icon: 'users', title: 'Roles y Permisos', description: 'Controla qué puede ver y hacer cada miembro de tu equipo dentro del sistema.' },
      { icon: 'report', title: 'Reportes Automatizados', description: 'Genera informes en PDF o Excel con un solo clic, ahorrando horas de trabajo.' }
    ],
    benefits: [
      'Desarrollo basado en tus requerimientos exactos',
      'Base de datos segura y escalable',
      'Interfaz intuitiva para tu equipo',
      'Soporte y mantenimiento continuo'
    ],
    priceFrom: 'S/ 500',
    delivery: 'A definir según proyecto',
  },
  {
    tag: 'SEO',
    title: 'SEO y posicionamiento',
    slug: 'posicionamiento-organico',
    description: 'Atrae clientes que ya te están buscando en Google. Hacemos que tu web aparezca en los primeros resultados.',
    detailedDescription: 'El 90% de los usuarios no pasa de la primera página de Google. Si no estás ahí, no existes. Nuestro servicio de SEO no son trucos ni promesas vacías; es una metodología técnica y de contenido para construir la autoridad de tu dominio y convertir el tráfico orgánico en tu principal fuente de clientes.',
    targetAudience: [
      { role: 'Negocios Locales', focus: 'Aparecer en el mapa y búsquedas "cerca de mí".' },
      { role: 'E-commerce', focus: 'Posicionar productos y categorías por encima de la competencia.' },
      { role: 'Servicios Profesionales', focus: 'Ser la primera opción cuando alguien busca "abogado en [ciudad]".' }
    ],
    features: [
      { icon: 'audit', title: 'Auditoría SEO Completa', description: 'Análisis técnico, de contenido y de competencia para encontrar oportunidades.' },
      { icon: 'keyword', title: 'Investigación de Keywords', description: 'Identificamos las palabras clave que tus clientes usan para buscarte.' },
      { icon: 'link', title: 'Link Building Estratégico', description: 'Creamos una estrategia para obtener enlaces de calidad que aumenten tu autoridad.' }
    ],
    benefits: [
      'Optimización técnica (velocidad, schema, etc.)',
      'Creación de contenido optimizado para SEO',
      'Configuración de Google Search Console y Analytics',
      'Reportes mensuales de posicionamiento y tráfico'
    ],
    priceFrom: 'S/ 200',
    delivery: 'Resultados en 3–6 meses',
  }
];