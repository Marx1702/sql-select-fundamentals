# Tech_Store_Consultas_Basicas

# TechStore: Consultas Básicas SELECT (Fundamentos)

Este repositorio contiene las primeras consultas exploratorias e informes básicos extraídos de la tabla de ventas (`sales`) de TechStore para el equipo de Finanzas.

## Preguntas Técnicas y Mejores Prácticas

### 1. ¿Por qué es mala práctica usar `SELECT *` en producción?

Utilizar `SELECT *` (traer todas las columnas) es muy útil en la etapa de exploración inicial, pero se considera una muy mala práctica en sistemas en producción o dashboards automatizados por las siguientes razones:

* **Rendimiento y consumo de red:** Si una tabla tiene 50 columnas y el reporte solo necesita 3, traer las 47 restantes consume memoria, procesamiento de la base de datos y ancho de banda de forma innecesaria. Esto vuelve las consultas (y los dashboards) sumamente lentos.

* **Mantenibilidad y Robustez:** Si el día de mañana un ingeniero de datos agrega una columna nueva con datos sensibles o elimina una columna obsoleta, un script en producción que usa `SELECT *` podría romperse, ya que el orden o la cantidad de columnas cambiarían inesperadamente. Al nombrar explícitamente las columnas (`SELECT col1, col2`), aseguramos que el código devuelva siempre exactamente lo que esperamos.

### 2. ¿Por qué son importantes los alias para un stakeholder no técnico?

Los stakeholders (como gerentes de finanzas, marketing o directores) no necesitan entender la arquitectura de la base de datos; necesitan respuestas rápidas y claras. Los nombres técnicos de las columnas suelen estar en inglés, abreviados, o tener nomenclaturas de sistema (ej: `cust_id_fk`).

El uso de **Alias** (con la cláusula `AS`) actúa como un "traductor" entre la base de datos y el lenguaje de negocio. 
* **Ejemplo concreto:** Si le entregamos al equipo de finanzas una tabla con la columna `total_amount`, podrían dudar: ¿es con impuestos? ¿es en dólares? Al usar un alias como `total_amount AS monto_total_facturado`, eliminamos cualquier ambigüedad técnica y transformamos un dato crudo en información lista para ser consumida e interpretada por el área financiera.