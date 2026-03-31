export interface Review {
  id:           number;
  name:         string;
  role:         string;
  company:      string;
  location:     string;
  initials:     string;
  avatarGrad:   string;   // gradiente CSS para el avatar
  rating:       number;   // 1-5
  text:         string;
  resultPill:   string;   // resultado destacado ej: "+180% citas"
  featured?:    boolean;  // card más grande / destacada
}

export const reviews: Review[] = [
  {
    id:         1,
    name:       'Mariana Ríos',
    role:       'Directora',
    company:    'Clínica DentPro',
    location:   'Lima',
    initials:   'MR',
    avatarGrad: 'linear-gradient(135deg, #1E9FE8, #5B4FD4)',
    rating:     5,
    text:       'Antes tenía una página hecha en Wix que nadie visitaba. RYE WEB me entregó una landing en 9 días y en el primer mes ya triplicamos las citas. El diseño es exactamente lo que imaginaba y el equipo estuvo disponible en todo momento.',
    resultPill: '+180% en citas agendadas',
    featured:   true,
  },
  {
    id:         2,
    name:       'Jorge Castillo',
    role:       'Propietario',
    company:    'Sabores del Norte',
    location:   'Trujillo',
    initials:   'JC',
    avatarGrad: 'linear-gradient(135deg, #0F6E56, #1D9E75)',
    rating:     5,
    text:       'Lo que más me sorprendió fue que entendieron mi negocio desde la primera reunión. La tienda quedó perfecta, con Culqi integrado y todo. Las ventas online pasaron de cero a ser el 40% de mis ingresos mensuales.',
    resultPill: '+240% ventas en 3 meses',
  },
  {
    id:         3,
    name:       'Alejandro Ramos',
    role:       'Socio fundador',
    company:    'Estudio Legal Ramos',
    location:   'Lima',
    initials:   'AR',
    avatarGrad: 'linear-gradient(135deg, #854F0B, #EF9F27)',
    rating:     5,
    text:       'Necesitaba una web corporativa que transmitiera seriedad. Me entregaron el diseño en Figma antes de empezar a programar, pude ver exactamente cómo iba a quedar. El resultado superó todas mis expectativas.',
    resultPill: '+3x tráfico orgánico',
  },
  {
    id:         4,
    name:       'Valeria Torres',
    role:       'Fundadora',
    company:    'Academia FitPro',
    location:   'Lima',
    initials:   'VT',
    avatarGrad: 'linear-gradient(135deg, #993556, #D4537E)',
    rating:     5,
    text:       'Contraté la plataforma de e-learning para mis cursos de fitness. En el primer mes ya tenía 200 alumnos pagando. El sistema de pagos y los certificados automáticos funcionan perfecto. Fue la mejor inversión del año.',
    resultPill: '800+ alumnos activos',
  },
  {
    id:         5,
    name:       'Roberto Paredes',
    role:       'Gerente General',
    company:    'Inmobiliaria BienVivir',
    location:   'Lima',
    initials:   'RP',
    avatarGrad: 'linear-gradient(135deg, #185FA5, #1E9FE8)',
    rating:     5,
    text:       'Buscaba alguien que realmente entendiera SEO, no solo diseño. RYE WEB me explicó todo el proceso, optimizaron la velocidad y en 2 meses empecé a aparecer en la primera página de Google para mis keywords principales.',
    resultPill: 'Pág. 1 en Google en 60 días',
  },
  {
    id:         6,
    name:       'Carmen Mendoza',
    role:       'CEO',
    company:    'LogiPack Solutions',
    location:   'Lima',
    initials:   'CM',
    avatarGrad: 'linear-gradient(135deg, #26215C, #5B4FD4)',
    rating:     5,
    text:       'El sistema CRM que me desarrollaron redujo un 60% el tiempo que mi equipo gastaba en procesos manuales. La atención post-entrega también es excelente, cualquier ajuste lo resuelven el mismo día.',
    resultPill: '60% menos tiempo operativo',
  },
];

// Estadísticas globales para el strip superior
export const reviewStats = {
  rating:        '4.9',
  ratingMax:     '5',
  totalClients:  '30+',
  recommend:     '100%',
  avgConversion: '3x',
};
