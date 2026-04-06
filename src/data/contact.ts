// ============================================================
// Configuración de contacto — edita solo este archivo
// ============================================================

export const contactConfig = {
  // WhatsApp
  whatsapp: {
    number:  '+51920574439',          // ← cambia por tu número real (con código de país)
    display: '+51 920 574 439',       // ← formato visual
    message: 'Hola, me interesa cotizar un proyecto web con RYE.',
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
      url:   'https://www.tiktok.com/@ryeweb.pe?_r=1&_t=ZS-95HkC57lX96',   // ← cambia
    },
    {
      id:    'facebook',
      label: 'Facebook',
      url:   'https://www.facebook.com/share/1DRfM2EoDJ/',  // ← cambia
    },
    {
      id:    'instagram',
      label: 'Instagram',
      url:   'https://www.instagram.com/ryeweb.sac.pe?igsh=eDF0aWZ4ZW90ZHhk', // ← cambia
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
