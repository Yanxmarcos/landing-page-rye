// ============================================================
// Configuración de contacto — edita solo este archivo
// ============================================================

export const contactConfig = {
  // WhatsApp
  whatsapp: {
    number:  '+51999999999',          // ← cambia por tu número real (con código de país)
    display: '+51 999 999 999',       // ← formato visual
    message: 'Hola, me interesa cotizar un proyecto web con RYE WEB.',
    get url() {
      return `https://wa.me/${this.number.replace(/\D/g,'')}?text=${encodeURIComponent(this.message)}`;
    },
  },

  // Email
  email: {
    address: 'ryeweb.sac@gmail.com',
    subject: 'Consulta desde ryeweb.com',
    get url() {
      return `mailto:${this.address}?subject=${encodeURIComponent(this.subject)}`;
    },
  },

  // Redes sociales — pon las URLs reales de tu perfil
  socials: [
    {
      id:    'tiktok',
      label: 'TikTok',
      url:   'https://tiktok.com/@ryeweb',   // ← cambia
    },
    {
      id:    'facebook',
      label: 'Facebook',
      url:   'https://facebook.com/ryeweb',  // ← cambia
    },
    {
      id:    'instagram',
      label: 'Instagram',
      url:   'https://instagram.com/ryeweb', // ← cambia
    },
  ],

  // Opciones del selector "Tipo de proyecto"
  serviceOptions: [
    'Landing Page',
    'Tienda virtual (E-commerce)',
    'Página web corporativa',
    'Aula virtual / E-learning',
    'Sistema web a medida',
    'SEO y posicionamiento',
    'No estoy seguro aún',
  ],
} as const;
