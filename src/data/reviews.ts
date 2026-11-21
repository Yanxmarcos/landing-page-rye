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
    id:         3,
    name:       'H & J Importaciones',
    role:       'Socio fundador',
    company:    'Importaciones de Tecnología',
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
  totalClients:  '10+',
  recommend:     '100%',
  avgConversion: '3x',
};
