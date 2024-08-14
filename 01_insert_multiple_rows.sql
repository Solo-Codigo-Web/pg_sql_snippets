CREATE TABLE blogs (
    id_blog serial PRIMARY KEY,
    name varchar(150) NOT NULL,
    url  varchar(250) NOT NULL,
    created_at timestamptz DEFAULT now()
);

INSERT INTO blogs (name, url) VALUES
('Machine Learning Mastery', 'https://machinelearningmastery.com'),
('El blog Salmón', 'https://www.elblogsalmon.com'),
('Lider Ejecutivo', 'https://liderejecutivo.com'),
('CEO Level', 'https://www.ceolevel.com/blog'),
('Think Big','https://blogthinkbig.com'),
('Solo Data Science', 'https://solodatascience.com'),
('Harvard Business Review', 'https://hbr.org'),
('Bloomberg', 'https://www.bloomberg.com'),
('Business Insider','https://www.businessinsider.com'),
('MIT Technology Review','https://www.technologyreview.es');