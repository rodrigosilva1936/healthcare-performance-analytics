

-- Emergency Episodes Analysis


-- Average emergency episodes by region

SELECT ars, AVG(valor) AS Avg_emergency_episodes
FROM [healthcare-cleaned]
WHERE indicador = 'Número estimado de episódios de urgência' AND ars <> 'Portugal Continental'
GROUP BY ars
ORDER BY Avg_emergency_episodes DESC

/* ARS Norte : 5951
   ARS Lisboa e VT : 5598
   ARS Centro : 2964
   ARS Alentejo : 1017
   ARS Algarve: 875 */

-- Average emergency episodes by year - Portugal Continental

SELECT ano , AVG(valor) AS Avg_emergency_episodes
FROM [healthcare-cleaned]
WHERE ars = 'Portugal Continental' AND indicador = 'Número estimado de episódios de urgência'
GROUP BY ano
ORDER BY Avg_emergency_episodes DESC

-- 2019 > 2023 > 2018 > 2022 > 2024 > 2017 > 2016 > 2025 > 2026 > 2021 > 2020

--  Average emergency episodes by month - Portugal Continental

SELECT mes , AVG(valor) AS Avg_emergency_episodes
FROM [healthcare-cleaned]
WHERE ars = 'Portugal Continental' AND indicador = 'Número estimado de episódios de urgência'
GROUP BY mes
ORDER BY Avg_emergency_episodes DESC

-- Month: 10 > 11 > 12 > 5 > 8 > 7 > 6 > 2 > 9 > 1 > 3 > 4

--  Average emergency episodes by quarter - Portugal Continental

SELECT trimestre , AVG(valor) AS Avg_emergency_episodes
FROM [healthcare-cleaned]
WHERE ars = 'Portugal Continental' AND indicador = 'Número estimado de episódios de urgência'
GROUP BY trimestre
ORDER BY Avg_emergency_episodes DESC

-- Quarter: 4 > 3 > 2 > 1 (Number of emergency episodes increases with higher the quarter of the year)


