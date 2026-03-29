# Actividad 5: Preguntas Conceptuales

5. ¿Cuál es la diferencia fundamental entre Integración Continua (CI) y Entrega Continua (CD)?
- CI (Integración Continua) es el proceso de automatizar la integración de cambios de código, ejecutando pruebas y validaciones en cada commit. CD (Entrega Continua) automatiza la entrega de esos cambios a un entorno de producción o pre-producción, permitiendo despliegues frecuentes y confiables.

6. ¿Qué es un GitHub self-hosted runner y cuándo sería necesario usarlo?
- Es un servidor propio (no administrado por GitHub) que ejecuta los jobs de Actions. Es necesario cuando se requieren recursos especiales, acceso a redes privadas, o mayor control sobre el entorno de ejecución.

7. ¿Cuál es el propósito de los GitHub environments? ¿Cómo se usan en workflows?
- Permiten definir entornos (ej: staging, production) con reglas y secrets específicos. Se usan en workflows para controlar despliegues, aprobaciones y acceso a secrets según el entorno.

8. ¿Qué es una rollback strategy y cómo se implementaría en un pipeline de CD?
- Es un plan para revertir a una versión anterior si el despliegue falla. Se implementa agregando pasos en el pipeline que restauran el estado anterior (ej: redeploy de una imagen previa, restaurar backups, o revertir cambios en infraestructura).
