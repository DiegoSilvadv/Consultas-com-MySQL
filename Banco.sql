create database estacionamento ;
 
use estacionamento;
 
 
 
CREATE TABLE cliente (   cpf int NOT NULL,   nome varchar(60),   dtNasc date,   PRIMARY KEY (cpf) 
); 
 
CREATE TABLE modelo (   codMod int NOT NULL,   Descricao varchar(40), 
  PRIMARY KEY (codMod) 
); 
 
CREATE TABLE veiculo (   placa varchar(8) NOT NULL,   ano int NOT NULL,   Modelo_codMod int NOT NULL,   Cliente_cpf int NOT NULL,   cor varchar(20) DEFAULT NULL, 
  PRIMARY KEY (placa), 
  FOREIGN KEY (Cliente_cpf) REFERENCES   cliente (cpf), 
  FOREIGN KEY (Modelo_codMod) REFERENCES   modelo (codMod) 
); 
 
 
CREATE TABLE patio (   num int NOT NULL,   endereco varchar(40),   capacidade int, 
  PRIMARY KEY (num) 
); 
 
CREATE TABLE estaciona (   cod int NOT NULL,   Patio_num int NOT NULL,   Veiculo_placa varchar(8) NOT NULL,   dtEntrada varchar(10),   dtSaida varchar(10),   hsEntrada varchar(10),   hsSaida varchar(10), 
  PRIMARY KEY (cod), 
  FOREIGN KEY  (Veiculo_placa) REFERENCES veiculo(placa), 
  FOREIGN KEY  (Patio_num) REFERENCES patio(num) 
); 
 
 
 
 
-- 
-- Insertes tabela Modelo 
-- 
INSERT INTO cliente VALUES (111,'Luiz da Silva','1990-01-01'); 
INSERT INTO cliente VALUES (222,'Victor Martins','1994-12-22'); 
INSERT INTO cliente VALUES (333,'Guiomar Franco','1985-03-23'); 
INSERT INTO cliente VALUES (444,'Silvana Nobrega de Melo','1983-04-21'); 
INSERT INTO cliente VALUES (555,'Matheus Britto','1993-06-12'); 
INSERT INTO cliente VALUES (666,'Ricardo fré','1980-07-30'); 
INSERT INTO cliente VALUES (777,'Luciana de Campos','1993-05-25'); 
-- 
-- Insertes tabela Modelo 
-- 
INSERT INTO modelo VALUES (1,'Camaro'); 
INSERT INTO modelo VALUES (2,'Gol'); 
INSERT INTO modelo VALUES (3,'Onix'); 
INSERT INTO modelo VALUES (4,'Linea'); 
INSERT INTO modelo VALUES (5,'i30'); 
INSERT INTO modelo VALUES (6,'HB20'); 
INSERT INTO modelo VALUES (7,'Hilux'); 
-- 
-- Insertes tabela veiculo 
-- 
INSERT INTO veiculo VALUES ('FEJ-2525',2015,1,333,'Branca'); 
INSERT INTO veiculo VALUES ('JEG-1010',1990,2,222,'Verde'); 
INSERT INTO veiculo VALUES ('JEJ-5060',2001,7,666,'Prata'); 
INSERT INTO veiculo VALUES ('JEX-1515',2012,5,777,'Preta'); 
INSERT INTO veiculo VALUES ('JJF-3030',2016,4,555,'Verde'); 
INSERT INTO veiculo VALUES ('JJJ-2020',1980,1,111,'Amarelo'); 
INSERT INTO veiculo VALUES ('LUC-1010',2014,3,444,'Vermelha'); 
-- 
-- Insertes tabela patio 
-- 
INSERT INTO patio VALUES (1,'Esplana Shopping',1000); 
INSERT INTO patio VALUES (2,'Park Shopping',3000); 
INSERT INTO patio VALUES (3,'Patio Brasil Shopping',2500); 
INSERT INTO patio VALUES (4,'Tiete Park',2000); 
INSERT INTO patio VALUES (5,'Itaquera Park', 1500); 
INSERT INTO patio VALUES (6,'Vitrine Shopping',800); 
INSERT INTO patio VALUES (7,'Paje Shopping',600); 
-- 
-- Insertes tabela estaciona 
-- 
INSERT INTO estaciona VALUES (1,1,'JEG-1010','09/04/2016','09/04/2016','11:00','12:00'); 
INSERT INTO estaciona VALUES (2,2,'JJJ-2020','10/04/2016','10/04/2016','10:00','11:00'); 
INSERT INTO estaciona VALUES (3,3,'JEG-1010','10/04/2016','10/04/2016','15:00','16:00'); 
INSERT INTO estaciona VALUES (4,4,'JJJ-2020','11/04/2016','11/04/2016','19:00','22:00'); 
INSERT INTO estaciona VALUES (5,5,'JJJ-2020','11/04/2016','11/04/2016','20:00','22:15'); 
INSERT INTO estaciona VALUES (6,1,'JEJ-5060','12/04/2016','12/04/2016','12:00','14:30'); 
INSERT INTO estaciona VALUES (7,2,'JEJ-5060','12/04/2016','12/04/2016','17:00','20:00'); 
INSERT INTO estaciona VALUES (8,7,'LUC-1010','12/04/2016','12/04/2016','10:00','11:45'); 
INSERT INTO estaciona VALUES (9,5,'LUC-1010','12/04/2016','12/04/2016','18:00','20:05'); 
INSERT INTO estaciona VALUES (10,4,'JJF-3030','12/04/2016','12/04/2016','18:00','21:00'); 