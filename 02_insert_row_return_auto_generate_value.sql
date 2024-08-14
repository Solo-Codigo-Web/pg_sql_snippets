INSERT INTO blogs (name, url) VALUES
('The new stack', 'https://thenewstack.io'),
('AWS Compute Blog', 'https://aws.amazon.com/es/blogs/compute/'),
('CiberSeguridad Latam', 'https://www.ciberseguridadlatam.com/')
RETURNING name, id_blog, created_at;