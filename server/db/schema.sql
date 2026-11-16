-- drop old tables so i can rerun this clean
DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS genres;

-- authors table
CREATE TABLE authors (
  id SERIAL PRIMARY KEY, -- auto id
  name VARCHAR(150) NOT NULL,
  bio TEXT -- for the details page
);

-- genres table
CREATE TABLE genres (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL UNIQUE -- no dupe genres
);

-- books table <---
CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  author_id INT NOT NULL REFERENCES authors(id) ON DELETE CASCADE, -- links to authors, delete author = delete their books
  genre_id INT NOT NULL REFERENCES genres(id), -- links to genres
  description TEXT,
  publish_date DATE,
  cover_url TEXT -- link to cover img
);