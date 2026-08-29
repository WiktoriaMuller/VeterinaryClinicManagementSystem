SELECT 
    owners.owner_email, 
    owners.owner_name,
    pets.pet_name,
    visits.visit_date
FROM owners
JOIN pets ON owners.owner_id = pets.owner_id
JOIN visits ON pets.pet_id = visits.pet_id
WHERE pets.pet_id = {{ petSelectEdit.value }}
ORDER BY visits.visit_date DESC
LIMIT 1;

