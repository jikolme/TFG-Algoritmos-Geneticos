# Resumen de Permisos y Vacaciones de los Empleados Públicos (AGE - EBEP)

La planificación de calendarios en la Administración General del Estado (incluida la GISS) se rige fundamentalmente por los artículos 48, 49 y 50 del Texto Refundido de la Ley del Estatuto Básico del Empleado Público (TREBEP). A efectos de modelado de software, se categorizan de la siguiente forma:

## 1. Vacaciones y Asuntos Particulares (Permisos Flexibles/Negociables)
Estos permisos están **condicionados a las necesidades del servicio**, por lo que son el objetivo principal de optimización del Algoritmo Genético.

*   **Vacaciones (Art. 50):** 22 días hábiles por año completo de servicio (o parte proporcional). Se añaden días extra según la antigüedad (conocidos como "canosos"): un día hábil adicional al cumplir 15 años de servicio, y otro más por cada 5 años adicionales (20, 25, 30...).
*   **Asuntos Particulares (Art. 48.k):** 6 días al año (comúnmente llamados "moscosos"). También aumentan con la antigüedad: 2 días más al cumplir el sexto trienio, y 1 día más por cada trienio adicional a partir del octavo.

## 2. Permisos por Conciliación (Permisos Programables Obligatorios)
Son obligatorios y se suelen conocer con antelación, lo que permite al algoritmo planificar la falta de efectivos.

*   **Nacimiento, Adopción o Acogimiento (Art. 49):** 16 semanas para ambos progenitores (con distribución regulada por ley).
*   **Lactancia (Art. 48.f):** 1 hora de ausencia diaria para hijos menores de 12 meses. Es muy común sustituir este derecho por un permiso retribuido que acumula esas horas en **jornadas completas**, creando un bloque de días libres consecutivos tras la baja por nacimiento.
*   **Exámenes prenatales y técnicas de preparación al parto:** Por el tiempo indispensable.

## 3. Permisos de Ausencia Justificada (Eventos Discretos)
Suelen ser de corta duración. Algunos se pueden prever y otros son sobrevenidos (obligan al algoritmo a recalcular).

*   **Fallecimiento, accidente o enfermedad grave de familiar (Art. 48.a):** 
    *   Familiar de primer grado: 3 días hábiles (misma localidad) o 5 días hábiles (distinta localidad).
    *   Familiar de segundo grado: 2 días hábiles (misma localidad) o 4 días hábiles (distinta localidad).
*   **Traslado de domicilio sin cambio de residencia (Art. 48.b):** 1 día.
*   **Exámenes finales y pruebas de aptitud (Art. 48.d):** Durante los días de su celebración.
*   **Deber inexcusable de carácter público o personal (Art. 48.j):** Por el tiempo indispensable (ej. asistencia a juicios, mesa electoral).
*   **Cuidado de hijo menor enfermo grave:** Reducción de jornada retribuida (hasta que el menor cumpla 23 años en ciertos casos).

## 4. Otras situaciones especiales
*   **Permiso por violencia de género o sexual (Art. 49.d):** Ausencias justificadas y posibilidad de reducción de jornada, reordenación del tiempo de trabajo o movilidad geográfica.
*   **Permisos sindicales:** Las horas o días correspondientes según los acuerdos de representación sindical.
