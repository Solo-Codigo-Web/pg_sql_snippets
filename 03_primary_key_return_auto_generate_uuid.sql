CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
 
CREATE TABLE books (
    id    uuid DEFAULT uuid_generate_v4(),
    name  text NOT NULL
);
 
insert into books (name) values
('The Data Science Handbook'),
('Introduction to Statistical Learning'),
('The Art of Data Science')
RETURNING id, name;