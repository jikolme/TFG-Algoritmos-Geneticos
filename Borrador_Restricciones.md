### 1. Descripción del Problema y Justificación
La Gerencia de Informática de la Seguridad Social (GISS) requiere una planificación eficiente del calendario de su personal técnico. En la actualidad, la coordinación de vacaciones, permisos y teletrabajo se enfrenta al reto de equilibrar las necesidades operativas de la organización con la conciliación familiar y personal de los trabajadores. El uso de metodologías tradicionales o de asignación secuencial (first-come, first-served) resulta ineficiente y rígido. Por ello, este proyecto propone el diseño y desarrollo de una herramienta basada en Algoritmos Genéticos capaz de realizar una optimización global, evaluando millones de combinaciones para encontrar el calendario óptimo.

### 2. Objetivos de la Herramienta
El objetivo principal es automatizar la generación de calendarios de forma óptima, maximizando el grado de satisfacción general de la plantilla sin vulnerar los requisitos de presencialidad y operatividad de la GISS.

### 3. Modelado de Restricciones (Constraint Modeling)
Para alimentar el Algoritmo Genético, los condicionantes del mundo real se han traducido a un sistema de pesos dentro de la Función de Aptitud (Fitness Function), dividiéndose en dos categorías fundamentales:

#### 3.1. Restricciones Fuertes (Hard Constraints)
Son de cumplimiento obligatorio. Si un calendario generado por el algoritmo incumple alguna, es descartado o penalizado con un valor infinito:
* **Cobertura Mínima de Servicio:** Garantizar un número mínimo de técnicos operativos por día.
* **Presencialidad Obligatoria:** Del personal operativo, un porcentaje o número mínimo debe estar físicamente en la oficina (no teletrabajando).
* **Permisos Inamovibles:** Vacaciones con reservas ya pagadas y justificadas por el trabajador, o visitas médicas de carácter obligatorio y no reprogramable.
* **Eventos Laborales Críticos:** Días marcados por la organización donde se requiere presencialidad total o perfiles específicos (ej. despliegue de servidores, incidencias programadas).

#### 3.2. Restricciones Blandas (Soft Constraints)
Son altamente deseables, pero flexibles. El algoritmo intentará satisfacer la mayor cantidad posible de ellas, priorizándolas según su peso:
* **Conciliación Familiar (Prioridad Alta):** Solicitudes de vacaciones condicionadas por el calendario escolar de los hijos o las vacaciones impuestas de la pareja del técnico.
* **Visitas Médicas Flexibles (Prioridad Media):** Permisos de salud que el técnico preferiría en una fecha concreta, pero que admiten cierto margen de desplazamiento temporal si el servicio lo requiere.
* **Equidad en el Teletrabajo (Prioridad Media):** Reparto justo y equilibrado de los días de teletrabajo entre toda la plantilla, evitando descompensaciones.
* **Preferencias Generales (Prioridad Baja):** Días libres o de teletrabajo solicitados por pura preferencia personal.
