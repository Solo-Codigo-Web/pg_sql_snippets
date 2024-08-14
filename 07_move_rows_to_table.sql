-- Creamos tabla donde se almacenarán los registros (tareas) eliminados
CREATE TABLE logs_deleted_tasks AS
SELECT * FROM tasks WHERE 1=1;

-- Mover registros (tareas compleadas) a logs_deleted_tasks
WITH completed_tasks AS (
    DELETE FROM tasks
          WHERE progress = 100
      RETURNING *
)
INTO INTO logs_deleted_tasks
SELECT * FROM completed_tasks;