UPDATE pets
SET next_vaccination = NULLIF(NULL, '')::DATE 
WHERE pet_id = {{ petInput.value }}
RETURNING *;