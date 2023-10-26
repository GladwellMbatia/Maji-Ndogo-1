USE md_water_services;
SHOW TABLES;

SELECT *
FROM location
LIMIT 5;

SELECT *
FROM visits
LIMIT 5;

SELECT DISTINCT type_of_water_source
FROM water_source;

SELECT *
FROM visits
WHERE time_in_queue>500;

SELECT *
FROM water_source
WHERE source_id IN ('SoIl32582224','HaRu19752224','AkRu03357224','KiRu29315224','KiRu26704224');

SELECT *
FROM water_quality
WHERE subjective_quality_score=10
AND visit_count=2;

SELECT *
FROM well_pollution
WHERE results='Clean' 
AND biological>0.01;

SELECT *
FROM well_pollution
WHERE description LIKE 'Clean_%';

SET SQL_SAFE_UPDATES=0;
UPDATE well_pollution
SET description='Bacteria: E. coli'
WHERE description='Clean Bacteria: E. coli';

UPDATE well_pollution
SET description='Bacteria: Giardia Lamblia'
WHERE description='Clean Bacteria: Giardia Lamblia';

UPDATE well_pollution
SET results='Contaminated: Biological'
WHERE biological>0.01
AND results='Clean';

