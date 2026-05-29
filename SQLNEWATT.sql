CREATE DATABASE LocadoraDB;
 
 use LocadoraDB;

 CREATE TABLE diretores(
 id INT PRIMARY KEY IDENTITY,
 Nome varchar (200) not null
 );

 CREATE TABLE Generos (
 id INT PRIMARY KEY IDENTITY,
 Nome varchar (200) not null UNIQUE 
 );

  CREATE TABLE Filmes (
 id INT PRIMARY KEY IDENTITY ,
titulo VARCHAR (150) NOT NULL,
ano  INT,
idDiretor INT ,
FOREIGN KEY (idDiretor)
REFERENCES diretores(ID)
);

CREATE TABLE FilmesGeneros(
 id INT PRIMARY KEY IDENTITY ,
idfilme INT,
idGenero INT ,
FOREIGN KEY (idFilme)
REFERENCES Filmes(id),
FOREIGN KEY (idgenero)
REFERENCES Generos(id)
);