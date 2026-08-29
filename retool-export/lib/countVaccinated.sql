SELECT species, COUNT(*) AS pets_count
FROM pets
WHERE next_vaccination IS NULL OR next_vaccination >= CURRENT_DATE
GROUP BY species
ORDER BY pets_count DESC;