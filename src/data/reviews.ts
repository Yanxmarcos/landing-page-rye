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
    name:       'Mama Pizza',
    role:       'Propietario',
    company:    'Pizzeria MamaPizza',
    location:   'Trujillo',
    initials:   'MP',
    avatarGrad: 'linear-gradient(135deg, #1E9FE8, #5B4FD4)',
    rating:     5,
    text:       'Antes tenía una página hecha en Wix que nadie visitaba. RYE WEB me entregó una landing en 9 días y en el primer mes ya triplicamos las ventas. El diseño es exactamente lo que imaginaba y el equipo estuvo disponible en todo momento que lo necesite.',
    resultPill: 'Aumento de ventas en un 30% en el primer mes',
    featured:   true,
  },
  {
    id:         2,
    name:       'welding estructuras',
    role:       'Propietario',
    company:    'weldingestructuras',
    location:   'Trujillo',
    initials:   'WE',
    avatarGrad: 'linear-gradient(135deg, #0F6E56, #1D9E75)',
    rating:     5,
    text:       'Lo que más me sorprendió fue que entendieron mi negocio desde la primera reunión. La página web corporativa quedó perfecta, con modelado en 3D y todo. Las ventas online pasaron de cero a ser el 40% de mis ingresos mensuales.',
    resultPill: '+240% ventas en 3 meses',
  },
  {
    id:         3,
    name:       'H & J importaciones',
    role:       'Socio fundador',
    company:    'Importaciones de Tecnología ',
    location:   'Trujillo',
    initials:   'H&J',
    avatarGrad: 'linear-gradient(135deg, #854F0B, #EF9F27)',
    rating:     5,
    text:       'Necesitaba un sitema web a medida para mi negocio que transmitiera seriedad. Primero me entregaron el diseño antes de empezar a programar, pude ver exactamente cómo iba a quedar. El resultado superó todas mis expectativas.',
    resultPill: '+3x tráfico orgánico',
  },
  
];

// Estadísticas globales para el strip superior
export const reviewStats = {
  rating:        '',
  ratingMax:     '5',
  totalClients:  '10+',
  recommend:     '100%',
  avgConversion: '3x',
};
