SELECT species, COUNT(*) AS animal_count
FROM pets
WHERE next_vaccination < CURRENT_DATE
GROUP BY species
ORDER BY animal_count DESC;