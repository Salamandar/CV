#import "moderncv.typ": *

#let moderncv_lightblue = rgb(52, 116, 179)

#set page(margin: (top: 2.5cm, bottom: 1.1cm, left: 2cm, right: 2cm))

#show: project.with(
  author: "Félix Piédallu",
  title: "Ingénieur logiciel et électronique",
  github: "Salamandar",
  // phone: "+01 234 56 7890",
  // email: "john@example.com",
  main_color: moderncv_lightblue,
  heading_color: moderncv_lightblue
)

= Réalisations techniques

#cventry(
  start: 2024,
  end: 2025,
  duration: [1 an -- Freelance],
  place: "Syslinbit + Semtech",
  role: [Développement Zephyr],
)[
  - Portage de la stack LoRaWAN Basics Modem sur Zephyr
  - Implémentation logicielle de la _link-layer_ Bluetooth Low Energy
]

#cventry(
  start: 2023,
  end: 2024,
  duration: [1 an -- Freelance],
  role: [Conception Linux embarqué],
  place: "Syslinbit + Schneider",
  city: "Grenoble",
)[
  - _Bring-up_ U-Boot et Linux dans un environnement embarqué et _rebase_ Linux
  - Développement de drivers Ethernet pour Linux
]

#cventry(
  start: 2023,
  end: "…",
  duration: "Freelance",
  role: [Conception carte électronique],
  place: "Syslinbit + Enerbee",
  city: "Grenoble",
)[
  - Spécification, conception et réalisation d'une carte électronique alimentée sur batterie
]

#cventry(
  start: 2020,
  end: 2022,
  duration: [2.5 ans -- CDI],
  role: [Développement logiciel embarqué et tests],
  place: "Kalray",
  city: "Grenoble"
)[
  - Développement logiciel embarqué Linux sur une architecture spécifique $"kvx"$
  - Modernisation et réécriture de la base de tests automatisé
  - Mise en place de systèmes Linux embarqués sous Buildroot et Yocto
]

#cventry(
  start: 2022,
  role: "Conception électronique",
  place: "Elsys Design",
  city: "Grenoble"
)[
  - Évaluation et design d’une carte satellite capteur de distance "Time Of Flight"
]

#cventry(
  start: 2018,
  end: 2020,
  duration: [1.5 ans -- CDD],
  role: [Ingénieur Fablab],
  place: "Grenoble INP - Phelma",
  city: "Grenoble"
)[
  - Gestion d'un atelier avec imprimantes 3D et CNC
  - Développement et fabrication des maquettes de travaux pratiques étudiants
]

#cventry(
    start: 2017,
    end: 2018,
    duration: [1.5 ans -- CDI],
    role: [Développement logiciel Linux $C++$],
    place: "Keepixo",
    city: "Meylan",
)[
  Conception et développement d'un serveur de diffusion vidéo
  - Modernisation de la base de code, portage sous Linux et CMake
]

#cventry(
  start: 2016,
  duration: "5 mois",
  role: "Stage de fin d'études",
  place: "Institut Néel (CNRS)",
  city: "Grenoble",
)[
  Caractérisation de pointes fibrées pour une pince optique plasmonique
  - Instrumentation et mesures optiques et photoniques
]

#cventry(
  start: 2015,
  duration: "10 semaines",
  role: "Stage d'Application",
  place: "Laboratoire Pierre Aigrain",
  city: "ENS Paris",
)[
  Mise en place d'une expérience de transport quantique à très basse température
  - Hautes fréquences : Fabrication et filtrage de lignes RF
]

#cventry(start: 2014, role: "Stage Opérateur", place: "La Poste")[
  Appli Android de reconnaissance d'images.
]

#cventry(start: 2014, end: 2015, role: "Président du Club Robotronik de Phelma")[]
#cventry(start: 2013, end: 2020, role: "Participation à la Coupe de France de Robotique")[
  Avec Robotronik Phelma, puis Phenix Robotik et en tant que bénévole.
]

= Formation

#cventry(
  start: 2013,
  end: 2016,
  role: "Diplôme d'Ingénieur",
  place: "Grenoble INP - Phelma",
)[
  _Physique \& Nanosciences_, Spécialité Optique-Microélectronique
]

#cventry(
  start: 2011,
  end: 2013,
  role: "Classe Préparatoire",
  place: "Lycée Charlemagne",
  city: [Paris -- Maths-Physique (MP\*)],
)[]

#cventry(
  start: 2011,
  role: "Baccalauréat Scientifique",
  place: "Lycée Claude Monet",
  city: [Paris -- Mention Bien]
)[]


= Compétences techniques

#cvgrid(
    sepline: true,
)[
  #align(right, text("Technologies maîtrisées", weight: "semibold", fill: moderncv_lightblue))
][
  C, C++, Python, Meson, Yocto
  #linebreak()
  Arduino/STM32, Bare-Metal/RTOS
  #linebreak()
  Design électronique (KiCAD)
  #linebreak()
  CAO (OpenSCAD, FreeCAD), Impression 3D
]

#cventry(start: "Autres")[Rust, Java (Android), html/css, Zephyr]
#cventry(start: "Systèmes")[Linux (Archlinux, Debian), Raspberry Pi, Embarqué]

= Compétences Linguistiques

#cvlanguage(
  language: "Anglais",
  description: "Lu, écrit, parlé couramment",
  certificate: "93% au BULATS, C2"
)
#cvlanguage(language: "Allemand",
  description: "Lu, écrit, parlé",
  certificate: "Première langue entre 2004 et 2013, séjours en Allemagne"
)
#cvlanguage(language: "Chinois Mandarin",
  description: "Lu, écrit, parlé",
  certificate: "10 ans d'apprentissage et un séjour en Chine"
)
// #cvlanguage{Russe}{Bases acquises}{}


= Centres d'intérêt

#cvgrid()[
  Informatique #linebreak() Électronique
][
  - Participe à la Coupe de France de Robotique (#link("https://phenixrobotik.fr")[`Phenix Robotik`])
  - Projets personnels d'informatique et d'électronique (#link("https://github.com/Salamandar")[`Profil Github`])
  // #linebreak() Participe à la rédaction du Wiki Ubuntu francophone
]
#cvgrid()[Musique][Écoute du Jazz au Metal]
#cvgrid()[Sport][Natation, Plongée, Tir à l'arc]
