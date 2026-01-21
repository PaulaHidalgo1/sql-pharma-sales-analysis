# Análisis de Ventas Farmacéuticas con SQL

## Descripción del proyecto
Este proyecto consiste en el análisis de datos de ventas farmacéuticas utilizando **SQL** como herramienta principal. El objetivo es demostrar el uso de consultas SQL para calcular métricas relevantes, comparar categorías de productos y extraer conclusiones útiles para la toma de decisiones de negocio.

---

## Dataset
Se utiliza el archivo `salesmonthly.csv`, que contiene información agregada de ventas mensuales de diferentes categorías de medicamentos clasificados según códigos ATC.

- Periodo analizado: varios años
- Número de registros: 70
- Variables:
  - `datum`: fecha (mes)
  - Categorías de medicamentos: M01AB, M01AE, N02BA, N02BE, N05B, N05C, R03, R06

---

## Herramientas utilizadas
- SQLite
- DB Browser for SQLite
- SQL

---

## Estructura de la base de datos
Los datos del archivo CSV se importaron en una base de datos SQLite (`pharma_sales.db`) en la tabla:

- `salesmonthly`

Cada fila representa un mes y cada columna una categoría de medicamento.

---

## Consultas realizadas
Las principales consultas SQL desarrolladas en este proyecto incluyen:

- Visualización completa de los datos de ventas.
- Cálculo del total de ventas por mes mediante operaciones aritméticas.
- Cálculo del volumen total de ventas por cada categoría de medicamento.
- Identificación del **Top 3 de categorías más vendidas** mediante ordenación y limitación de resultados.

Las consultas se encuentran documentadas en el archivo `queries.sql`.

---

## Principales conclusiones
- Las ventas farmacéuticas muestran variaciones a lo largo del tiempo.
- La categoría **N02BE** concentra el mayor volumen total de ventas, seguida de **N05B** y **R03**.
- El uso de SQL permite transformar datos brutos en información útil para el análisis y la toma de decisiones comerciales.

---

## Estructura del repositorio
- `pharma_sales.db`: base de datos SQLite con la tabla de ventas.
- `salesmonthly.csv`: dataset original.
- `queries.sql`: archivo con las consultas SQL utilizadas.
- `README.md`: documentación del proyecto.

