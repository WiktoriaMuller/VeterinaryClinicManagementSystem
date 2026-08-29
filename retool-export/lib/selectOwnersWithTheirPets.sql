SELECT owners.*, 
       STRING_AGG(pets.pet_name, ', ') AS pet_names
FROM owners
LEFT JOIN pets ON owners.owner_id = pets.owner_id
GROUP BY owners.owner_id;