/* VER TODA LA TABLA */
SELECT * FROM salesmonthly;

/* TOTAL DE VENTAS POR MES */
SELECT 
    datum,
    (M01AB + M01AE + N02BA + N02BE + N05B + N05C + R03 + R06) AS total_sales
FROM salesmonthly;

/* VENTAS TOTALES POR CATEGORÍA */
SELECT 
    'M01AB' AS category, SUM(M01AB) AS total_sales FROM salesmonthly
UNION ALL
SELECT 'M01AE', SUM(M01AE) FROM salesmonthly
UNION ALL
SELECT 'N02BA', SUM(N02BA) FROM salesmonthly
UNION ALL
SELECT 'N02BE', SUM(N02BE) FROM salesmonthly
UNION ALL
SELECT 'N05B', SUM(N05B) FROM salesmonthly
UNION ALL
SELECT 'N05C', SUM(N05C) FROM salesmonthly
UNION ALL
SELECT 'R03', SUM(R03) FROM salesmonthly
UNION ALL
SELECT 'R06', SUM(R06) FROM salesmonthly;

/* TOP 3 CATEGORÍAS MAS VENDIDAS */
SELECT category, total_sales
FROM (
    SELECT 'M01AB' AS category, SUM(M01AB) AS total_sales FROM salesmonthly
    UNION ALL
    SELECT 'M01AE', SUM(M01AE) FROM salesmonthly
    UNION ALL
    SELECT 'N02BA', SUM(N02BA) FROM salesmonthly
    UNION ALL
    SELECT 'N02BE', SUM(N02BE) FROM salesmonthly
    UNION ALL
    SELECT 'N05B', SUM(N05B) FROM salesmonthly
    UNION ALL
    SELECT 'N05C', SUM(N05C) FROM salesmonthly
    UNION ALL
    SELECT 'R03', SUM(R03) FROM salesmonthly
    UNION ALL
    SELECT 'R06', SUM(R06) FROM salesmonthly
)
ORDER BY total_sales DESC
LIMIT 3;



