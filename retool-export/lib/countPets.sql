SELECT species, COUNT(*) AS count
FROM pets
GROUP BY species;