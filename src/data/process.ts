export interface ProcessMetric {
  icon:  string;
  value: string;
  label: string;
}

export interface ProcessStep {
  tag:         string;
  title:       string;
  description: string;
  deliverables: string[];
  metrics:     ProcessMetric[];
  nextLabel?:  string;
}

export const processSteps: ProcessStep[] = [
  {
    tag:         'Etapa 1 de 5',
    title:       'Diagnóstico',
    description: 'Antes de escribir una línea de código, entendemos tu negocio, tus clientes y lo que te diferencia. Sin esto, todo lo demás es decoración.',
    deliverables: [
      'Brief del proyecto y objetivos concretos',
      'Análisis de competencia directa',
      'Definición de KPIs y métricas de éxito',
    ],
    metrics: [
      { icon: 'clock',    value: '1–2 días',    label: 'Duración de esta etapa' },
      { icon: 'globe',    value: '100% remoto',  label: 'Videollamada o formulario' },
      { icon: 'file',     value: 'Documento',    label: 'Entregable: brief firmado' },
    ],
    nextLabel: 'Estrategia',
  },
  {
    tag:         'Etapa 2 de 5',
    title:       'Estrategia & Diseño',
    description: 'Traducimos el diagnóstico en una arquitectura visual. Wireframes, paleta, tipografía — todo alineado con tu identidad antes de escribir código.',
    deliverables: [
      'Wireframes y arquitectura de información',
      'Diseño UI en Figma con tu aprobación',
      'Sistema de colores y tipografía definido',
    ],
    metrics: [
      { icon: 'palette',  value: '3–5 días',     label: 'Duración de esta etapa' },
      { icon: 'figma',    value: 'Figma',         label: 'Herramienta de diseño' },
      { icon: 'refresh',  value: '2 revisiones',  label: 'Incluidas en el proceso' },
    ],
    nextLabel: 'Desarrollo',
  },
  {
    tag:         'Etapa 3 de 5',
    title:       'Desarrollo',
    description: 'Código moderno, limpio y optimizado. Velocidad real, SEO técnico desde el primer commit y estructura que escala sin deuda técnica.',
    deliverables: [
      'Frontend con Astro + Tailwind CSS',
      'SEO técnico y schema.org integrado',
      'Mobile-first, 90+ en Lighthouse',
    ],
    metrics: [
      { icon: 'zap',      value: '7–20 días',    label: 'Según complejidad' },
      { icon: 'chart',    value: '90+',           label: 'Score Lighthouse garantizado' },
      { icon: 'lock',     value: 'SSL + HTTPS',   label: 'Seguridad incluida' },
    ],
    nextLabel: 'Revisión',
  },
  {
    tag:         'Etapa 4 de 5',
    title:       'Revisión & Ajustes',
    description: 'Compartimos una URL de staging para que revises el sitio en vivo. Tus comentarios se convierten en cambios reales. Sin vueltas.',
    deliverables: [
      'Preview en URL de staging',
      '2 rondas de revisión incluidas',
      'QA en móvil, tablet y escritorio',
    ],
    metrics: [
      { icon: 'search',   value: '2–4 días',      label: 'Duración de esta etapa' },
      { icon: 'chat',     value: 'Feedback',       label: 'Comentarios en tiempo real' },
      { icon: 'devices',  value: '3 dispositivos', label: 'Móvil, tablet y desktop' },
    ],
    nextLabel: 'Lanzamiento',
  },
  {
    tag:         'Etapa 5 de 5',
    title:       'Lanzamiento',
    description: 'Tu sitio sale a internet optimizado, seguro y listo para competir. Te entregamos los accesos, la documentación y el seguimiento post-lanzamiento.',
    deliverables: [
      'Deploy en producción + dominio configurado',
      'Google Search Console y Analytics activos',
      'Soporte post-lanzamiento 30 días',
    ],
    metrics: [
      { icon: 'rocket',   value: '1 día',         label: 'Tiempo de deploy' },
      { icon: 'shield',   value: '30 días',        label: 'Soporte post-lanzamiento' },
      { icon: 'key',      value: 'Accesos totales', label: 'Hosting, dominio y código' },
    ],
  },
];