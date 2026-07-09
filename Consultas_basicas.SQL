
-- TechStore  Consultas Basicas SELECT
-- Autor: Juan Marcelo Arteaga
-- Fecha: 9/7/2026


-- Consulta 1: Exploracion general de la tabla sales

-- NOTA: Tiene sentido usar SELECT * en entornos de desarrollo o durante las 
-- primeras fases del analisis exploratorio (EDA) para conocer rapidamente 
-- que datos y columnas contiene una tabla. Sin embargo, no debe usarse 
-- en codigo de produccion final.

SELECT * FROM sales;

-- Consulta 2: Seleccion de columnas especificas para finanzas
SELECT 
    customer_id, 
    product_id, 
    total_amount
FROM sales;

-- Consulta 3: Seleccion con alias en español para stakeholders
SELECT 
    order_date AS fecha_pedido, 
    product_name AS nombre_producto, 
    quantity AS cantidad_unidades
FROM sales;