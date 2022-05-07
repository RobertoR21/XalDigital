--Aeropuerto con Mayor movimiento en el año
SELECT nombre_aeropuerto, movimientos, anio
FROM(
	SELECT v.id_aeropuerto, COUNT(*) movimientos, a.nombre_aeropuerto, date_part('year' , v.dia) as anio
	FROM vuelos v
	JOIN aeropuertos a
	on v.id_aeropuerto = a.id_aeropuerto
	GROUP BY v.id_aeropuerto, a.nombre_aeropuerto,v.dia) AS q
	WHERE anio = 2021
	ORDER BY movimientos DESC
	LIMIT 1
--Aerolinea con mayor movimiento en el año
SELECT nombre_aerolinea, movimientos
FROM(
	SELECT v.id_aerolinea, COUNT(*) movimientos, a.nombre_aerolinea
	FROM vuelos v
	JOIN aerolineas a
	on v.id_aerolinea = a.id_aerolinea
	GROUP BY v.id_aerolinea, a.nombre_aerolinea, v.dia) AS q
	WHERE movimientos > 2

--Dia con mayor numero de vuelos
SELECT date_part('month', vuelos.dia) as Mes, date_part('day', vuelos.dia) as dia, COUNT(*) AS vuelos
FROM vuelos
GROUP BY mes, dia
LIMIT 1

--Aerolineas con mas de 2 vuelos por semana
SELECT nombre_aerolinea, movimientos, anio
FROM(
	SELECT v.id_aerolinea, COUNT(*) movimientos, a.nombre_aerolinea, date_part('year' , v.dia) as anio
	FROM vuelos v
	JOIN aerolineas a
	on v.id_aerolinea = a.id_aerolinea
	GROUP BY v.id_aerolinea, a.nombre_aerolinea, v.dia) AS q
	WHERE anio = 2021
	ORDER BY movimientos DESC
	LIMIT 1



	