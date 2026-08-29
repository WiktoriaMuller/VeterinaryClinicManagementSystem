SELECT visit_date, temperature FROM visits
WHERE pet_id = {{ tablePets.selectedRow.pet_id }}