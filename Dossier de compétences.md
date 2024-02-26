---
numbersections: true
fontfamily: libertine
shift-heading-level-by: -1
---


# Dossier de compétences − Félix Piédallu

7 ans d'expérience

* Développement logiciel débarqué et embarqué
* Conception électronique

## Compétences techniques

### Développement logiciel

* Développement _user-space_ sous Linux, natif ou embarqué.
* Développement firmware embarqué et noyau Linux.

Langages :

* C, C++ [4/5]
* Python [4/5]
* Bash [5/5]
* Rust [1/5]
* Java (Android) [2/5]
* Programmation SIMD (SSE, AVX) [1/5]

Outils :

* Git [4/5]
* SVN [2/5]
* Build systems : Make [3/5], Meson, CMake
* Docker [3/5]
* Système Linux [4/5]
* Débuggeur GDB [2/5]
* Toolchains GCC/Intel icc
* Cross-compilation [3/5]
* Réseau (VLAN, network-namespaces, DHCP, link-local) [2/5]
* KiCAD [4/5]

Contributions diverses au monde du logiciel libre :

* Yunohost : distribution linux orientée auto-hébergement
* Portage de Gimp sous Meson
* Contributions diverses sur des projets pour l'embarqué
* Solides connaissances de l'écosystème libre du développement logiciel

### Développement Linux embarqué

Développement de systèmes et du noyau Linux pour l'embarqué.

* Buildroot [3/5]
* Yocto [3/5] (Formation Yocto Bootlin en juillet 2022)
* Développement noyau Linux et drivers [2/5]
* Ethernet (Drivers PHY, MAC, DSA) [2/5]

### Développement Firmware embarqué

Développement embarqué _bare metal_ ou avec OS temps réel.

* Robotique autonome _via_ le club Robotronik pour la Coupe de France de robotique
* Développement de stack ethernet sous OS temps réel

Technologies utilisées:

* stm32 [3/5]
* KVX (Kalray) [1/5]
* Périphériques i²c, SPI, CAN, analogique, DMA [2/5]
* Plusieurs HALs: ST, libopencm3 [2/5]
* FreeRTOS [2/5]
* Zephyr OS [1/5]

### Tests logiciels

Écriture de tests logiciel automatisés, natifs et pour l'embarqué.

* Framework de tests maison en Bash
* Pytest [3/5]
* Intégration continue:
  * Gitlab CI [4/5]
  * Jenkins [2/5]
* Tests via communication série

### Conception électronique

Conception de cartes électroniques.

* KiCAD [4/5]
* Altium [1/5]
* Microcontrôleurs [3/5]
* Signaux basse vitesse [3/5]
* Signaux haute vitesse [1/5]
* Puissance [2/5]

## Expériences et projets

### Ingénieur linux embarqué

> Schneider (Syslinbit, de mars 2023 à mars 2024)

* _Bring-up_ du bootloader et de Linux sur une carte embarquée
  * Adaptation de drivers et de device trees à la nouvelle carte
  * Développement d'un driver pour un périphérique Ethernet T1S pour Linux
  * Évolution et refactoring d'un environnement de développement Yocto
* Passage à Linux v5.10
  * _Rebase_ depuis v4.19 de drivers internes pour Ethernet, RS485, WiFi
  * Établissement d'une stratégie de mise à niveau et de refactoring d
* Intégration d'une solution d'agrégation de capteurs Zigbee et Modbus sur Linux dans Yocto

### Ingénieur Carte électronique

> Enerbee (Syslinbit, mars-avril 2023)

* Spécification, conception et réalisation d'une carte électronique
  * Gestion de la puissance, alimentation sur batterie et USB
  * Utilisation d'un microcontrôleur ESP32 et d'un System on Module LoRaWAN
  
### Ingénieur logiciel et tests

> Kalray - Montbonnot (Elsys Design, de mars 2020 à décembre 2022)

Projets et réalisations :

* Développement sur une stack ethernet/IP en C en embarquée sur un OS temps réel
  * Rajout de fonctionnalités
  * Écriture de tests
* Développement de la base de tests système automatisés pour l'embarqué
  * Développement des outils de tests en Bash
  * Réécriture de la base de tests de bash vers Pytest
  * Écriture d'outillage en Python pour la programmation et le test de logiciel embarqué
* Évolution d'un linux embarqué basé sur Buildroot
  * Mise à jour de Buildroot, mise en place d'une gestion du réseau
* Développement d'un linux embarqué basé sur Yocto
  * Mise en place de Yocto, de la gestion de l'intégration continue et d'un cache partagé
* Développement d'une librairie de communication inter-linux via i2c en C
  * Conception du protocole via i2c
  * Développement de la librairie "master" dans une librairie en C
  * Développement du "slave" dans un driver kernel Linux en C en collaboration avec un démon Python userspace
* Développement d'un logiciel de Haute Disponibilité
  * Design et conception du logiciel
  * Réflexions et design d'une machine à état distribuée sur plusieurs systèmes
* Gestion d'un datacenter de tests et d'intégration continue
  * Mise en place et gestion de machines

Outils et environnement technique :

* Développement sous Linux (Ubuntu), avec Git, Phabricator, Jenkins
* Buildroot, Yocto, Meson, Make
* Python, Pytest, Bash
* Architecture spécifique Kalray (KVX), ARM
* I²C, UART, Ethernet

### Ingénieur Fablab

> Grenoble INP - Phelma - Grenoble (de septembre 2018 à mars 2020)

Projets et réalisations :

* Gestion d'un atelier mécanique en lien avec les étudiants
  * Accompagnement des étudiants sur leurs réalisations techniques
  * Design et manufacture de pièces 3D, d'usinages
  * Mise en place d'imprimantes 3D FDM (Ultimaker, Ender3)
  * Mise en place d'un Wiki à destination des étudiants et des employés de l'école

* Conception et fabrication de maquettes de travaux pratiques étudiants
  * Étude et écriture des spécifications électroniques et physiques des travaux pratiques
  * Design de cartes électroniques analogiques (Mesure de ligne coaxiale, caractérisation de photodiodes)
  * Développement d'un logiciel d'acquisition de données

* Encadrement d'étudiants
  * Encadrement de travaux pratiques de mesures physiques et d'électronique
  * Formation d'étudiants à la conception électronique sur KiCAD

Outils et environnement technique :

* Développement sous Linux, pour Raspberry Pi, Arduino
* C, C++, Python
* KiCAD, SPICE, OpenSCAD (modélisation 3D)
* MediaWiki, Git

### Ingénieur développement logiciel C++

> Keepixo/Ateme - Meylan (de janvier 2017 à juin 2018)
> Développement et portage sous Linux d'un logiciel de transcodage vidéo

Projets et réalisations :

* Portage sous Linux d'un logiciel C++ Windows
  * Portage vers C++17, et modernisation du code spécifique Windows
  * Développement d'un serveur web sécurisé en C++ en remplacement des API Windows
* Modernisation du système de build
  * Portage sous CMake (précédemment un logiciel visualstudio)
  * Mise en place d'un système de cross-compilation pour la portabilité du logiciel (Support de CentOS 7 avec C++14)
  * Mise en place de l'intégration continue via Jenkins, et début de travaux pour un build reproductible
* Développement en C++ d'un outil de log système, de mesure de charge système et de
performances
* Développement de librairies de filtre vidéo haute performance
* Formation de l'équipe au développement/déploiement sous Linux

Outils et environnement technique :

* Développement sous Linux (Manjaro + Debian)
* C++17, Boost, CMake, Subversion (SVN)
* Crosstool-NG
* Docker, Jenkins
* Système Linux: MessageBoxes, named pipes, sharedmems.
* Compression et transmission vidéo : H.264, UDP, compression matérielle Intel AVX + QuickSync

### Développeur électronique et logiciel embarqué

> Robotronik Phelma et Phenix Robotik (de octobre 2013 à juillet 2019)
> Participation annuelle à la Coupe de France de Robotique

Projets et réalisations :

* Conception électronique de cartes
  * Contrôle moteur via ponts en H
  * Communication avec capteurs analogiques, I²C et SPI
  * Communication inter-cartes en bus CAN
  * Développement de cartes d'alimentation double rail

* Développement logiciel embarqué
  * Firmware de contrôle moteur et d'asservissement sur dsPIC puis sur stm32
  * Développement d'un firmware d'agrégation de capteurs connecté en bus CAN
  * Mise en place de ROS (Robot OS) sur raspberry pi en contrôle de cartes RTOS
  * Utilisation et développement d'une librairie d'abstraction matérielle libre

* Présidence du club
  * Gestion d'un budget de plusieurs projets
  * Mise en place d'un projet d'intégration des nouveaux membres
  * Communication au public et à l'administration de l'école

Outils et environnement technique :

* Linux (Manjaro)
* C, C++
* Altium et KiCAD
* OpenSCAD, FreeCAD (CAO 3D)
* Capteurs ToF (Time of Flight), ultrason, encodeurs rotatifs
