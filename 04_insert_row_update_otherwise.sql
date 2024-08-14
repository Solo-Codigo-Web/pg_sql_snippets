-- Creamos tabla de parámetros del negocio
CREATE TABLE business_parameters (
    key   TEXT PRIMARY KEY,
    value TEXT
);

-- Insertamos el parámetro IGV
INSERT INTO business_parameters (key, value) 
     VALUES ('IGV', '17')
ON CONFLICT (key) DO UPDATE SET value=EXCLUDED.value;

-- Insertamos o actualizamos el parámetro IGV
INSERT INTO business_parameters (key, value) 
     VALUES ('IGV', '18')
ON CONFLICT (key) DO UPDATE SET value=EXCLUDED.value;