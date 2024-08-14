DELETE FROM books WHERE name like '%Data Science%'
RETURNING name;