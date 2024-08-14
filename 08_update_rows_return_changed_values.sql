-- Creamos la tabla de jugadores 
create table players (
    id serial primary key,
    name text,
    points numeric default 0,
    status boolean default TRUE
);

-- Insertamos datos de prueba
insert into players (name,points,status) values
('Felipe Escajadillo', 85, true),
('Gonzalo Chacaltana', 55, true),
('Emilia Martinez', 45, false),
('Camila Collins', 95, true);

-- Actualizamos los puntos de los jugadores activos de manera aleatoria
UPDATE players
      SET points = points + (100 * random())::integer
    WHERE status = true
RETURNING id, name, points;