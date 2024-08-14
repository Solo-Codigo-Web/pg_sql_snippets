-- Creamos la tabla libros
CREATE TABLE books (
    id    uuid DEFAULT uuid_generate_v4(),
    name  text NOT NULL,
    type char(1)
);
 
-- Insertamos registros a la tabla libros.
insert into books (name, type) values
('The Da Vinci Code', 'B'),
('The Lord of the Rings', 'B'),
('The Girl with the Dragon Tattoo', 'H'),
('The Fault in Our Stars', 'B'),
('The Hunger Games', 'H');

-- Utilizamos sintaxis WHEN CASE para evaluar un campo y devolver un valor.
SELECT id,name,CASE WHEN type='B'  THEN 'Best Seller'
            WHEN type='H' THEN 'Hot Sale'
            ELSE 'Other'
       END
FROM books;

-- insertamos nuevo libro con valor type null
insert into books (name, type) values
('Fifty Shades of Grey', NULL);

	
SELECT name, COALESCE(type, '') FROM books;

-- uso de NULLIF
SELECT name, NULLIF(type, '-') FROM books;