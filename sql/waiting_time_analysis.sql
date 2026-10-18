
-- Average waiting time by region
SELECT ars, AVG(valor) AS waiting_time
FROM [healthcare-cleaned]
WHERE indicador = 'Tempo médio de espera entre a triagem e a primeira observação médica (rede de urgência hospitalar)' AND ars <> 'Portugal Continental'
GROUP BY ars
ORDER BY waiting_time DESC

-- ARS Lisboa e Vale do Tejo with the highest (79,87 min ~ 1h19) e ARS Alentejo with the lowest (39 min)

-- Average waiting time by year
SELECT ano, AVG(valor) AS waiting_time
FROM [healthcare-cleaned]
WHERE indicador = 'Tempo médio de espera entre a triagem e a primeira observação médica (rede de urgência hospitalar)' AND ars <> 'Portugal Continental'
GROUP BY ano
ORDER BY waiting_time DESC

-- 2024 (70,61 min ~ 1h10min) > 2023 > 2025 > 2022 > 2026 > 2016 > 2019 > 2018 > 2017 > 2021 > 2020 (42,31 min)

