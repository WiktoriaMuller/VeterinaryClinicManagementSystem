SELECT *
FROM visits v
LEFT JOIN pets p ON v.pet_id = p.pet_id
LEFT JOIN owners o ON p.owner_id = o.owner_id
LEFT JOIN vets vt ON v.vet_id = vt.vet_id;
