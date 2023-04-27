USE constraints;

CREATE TABLE pessoa2 (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    idade INT
);

CREATE TABLE enderecos(
id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
rua VARCHAR(100),
numero VARCHAR(10),
pessoa_id INT NOT NULL,
FOREIGN KEY (pessoa_id) REFERENCES pessoa2(id)
);

INSERT INTO pessoa2 (nome, idade) VALUE
("rui", 30),
("maria", 20),
("manuel",30);

SELECT * FROM pessoa2;

INSERT INTO enderecos (rua, numero, pessoa_id) VALUES
("rua da liberdade", "44", 2);

DROP TABLE pessoa2;
