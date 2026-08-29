SELECT visit_date, weight FROM visits
WHERE pet_id = {{ tablePets.selectedRow.pet_id }}