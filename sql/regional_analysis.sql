
-- Hospitalization rate by region
SELECT ars, AVG(valor) AS hospitalization_rate
FROM [healthcare-cleaned]
WHERE indicador = 'Taxa diária de atendimentos urgentes com internamento' AND ars <> 'Portugal Continental'
GROUP BY ars
ORDER BY hospitalization_rate DESC

-- ARS Algarve : 12.03% 
-- ARS Alentejo : 10.38%
-- ARS Centro : 9.69%
-- ARS Lisboa e VT : 8.92%
-- ARS Norte : 8,67%


-- Green/blue priority rate by region
SELECT ars, AVG(valor) AS blue_green_hospitalization_rate
FROM [healthcare-cleaned]
WHERE indicador = 'Taxa diária de atendimentos urgentes com prioridade verde ou azul' AND ars <> 'Portugal Continental'
GROUP BY ars
ORDER BY blue_green_hospitalization_rate DESC	

-- ARS Lisboa e VT : 45.36% 
-- ARS Alentejo : 42.85%
-- ARS Algarve : 37.42%
-- ARS Norte : 36.77%
-- ARS Centro : 34,56%