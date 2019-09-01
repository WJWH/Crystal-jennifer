CREATE TABLE migration_versions (id integer PRIMARY KEY AUTOINCREMENT, version text NOT NULL);
CREATE TABLE posts (id integer PRIMARY KEY AUTOINCREMENT, title text, content text, created_at text NOT NULL, updated_at text NOT NULL);
CREATE TABLE users (id integer PRIMARY KEY AUTOINCREMENT, username text, email text, created_at text NOT NULL, updated_at text NOT NULL);
