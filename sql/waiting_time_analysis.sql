-- Average waiting time by region
--Tempo médio de espera entre a triagem e a primeira observação médica (rede de urgência hospitalar)

SELECT ars, AVG(valor) AS Tempo de Espera
FROM heal