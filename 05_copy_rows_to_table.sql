-- Creamos tabla tareas (tasks)
CREATE TABLE tasks (
    id serial PRIMARY KEY,
    name TEXT,
    progress numeric,
    created_at timestamptz DEFAULT now()
);

-- Insertamos registros de prueba
insert into tasks (name, progress) values
('Review architecture diagram', 35),
('Analyze connection issue in billing module', 55),
('Coordinate code review with Joaquín', 100),
('Validate Azure Pipelines Deployment', 75),
('Book a medical appointment with a cardiology specialist', 100);

-- Creamos la tabla pending_tasks donde copiaremos registros
CREATE TABLE pending_tasks (
    id serial PRIMARY KEY,
    name TEXT,
    progress numeric
);

-- Copiar tareas en progreso en tabla pending_tasks
INSERT INTO pending_tasks
SELECT id,name,progress FROM tasks WHERE progress < 100;

-- Otra alternativa:
-- Crear tabla archived_tasks y copiar tareas completadas
CREATE TABLE archived_tasks AS
SELECT now() AS archival_date, *
FROM tasks WHERE progress = 100;