DROP TABLE IF EXISTS [#EstadoRegiaoBR];
CREATE TABLE [#EstadoRegiaoBR]
(
  Id         INT         NOT NULL,
  CodigoUf   INT         NOT NULL,
  Nome       VARCHAR(50) NOT NULL,
  Uf         CHAR(2)     NOT NULL,
  Regiao     INT         NOT NULL,
  IdRegiao   INT         NOT NULL,
  NomeRegiao VARCHAR(50) NOT NULL
);
INSERT INTO [#EstadoRegiaoBR] (Id, CodigoUf, Nome, Uf, Regiao, IdRegiao, NomeRegiao)
VALUES 
(1, 12, 'Acre', 'AC', 1, 1, 'Norte'),
(2, 27, 'Alagoas', 'AL', 2, 2, 'Nordeste'),
(3, 16, 'Amapá', 'AP', 1, 1, 'Norte'),
(4, 13, 'Amazonas', 'AM', 1, 1, 'Norte'),
(5, 29, 'Bahia', 'BA', 2, 2, 'Nordeste'),
(6, 23, 'Ceará', 'CE', 2, 2, 'Nordeste'),
(7, 53, 'Distrito Federal', 'DF', 5, 5, 'Centro-Oeste'),
(8, 32, 'Espírito Santo', 'ES', 3, 3, 'Sudeste'),
(9, 52, 'Goiás', 'GO', 5, 5, 'Centro-Oeste'),
(10, 21, 'Maranhão', 'MA', 2, 2, 'Nordeste'),
(11, 51, 'Mato Grosso', 'MT', 5, 5, 'Centro-Oeste'),
(12, 50, 'Mato Grosso do Sul', 'MS', 5, 5, 'Centro-Oeste'),
(13, 31, 'Minas Gerais', 'MG', 3, 3, 'Sudeste'),
(14, 15, 'Pará', 'PA', 1, 1, 'Norte'),
(15, 25, 'Paraíba', 'PB', 2, 2, 'Nordeste'),
(16, 41, 'Paraná', 'PR', 4, 4, 'Sul'),
(17, 26, 'Pernambuco', 'PE', 2, 2, 'Nordeste'),
(18, 22, 'Piauí', 'PI', 2, 2, 'Nordeste'),
(19, 33, 'Rio de Janeiro', 'RJ', 3, 3, 'Sudeste'),
(20, 24, 'Rio Grande do Norte', 'RN', 2, 2, 'Nordeste'),
(21, 43, 'Rio Grande do Sul', 'RS', 4, 4, 'Sul'),
(22, 11, 'Rondônia', 'RO', 1, 1, 'Norte'),
(23, 14, 'Roraima', 'RR', 1, 1, 'Norte'),
(24, 42, 'Santa Catarina', 'SC', 4, 4, 'Sul'),
(25, 35, 'São Paulo', 'SP', 3, 3, 'Sudeste'),
(26, 28, 'Sergipe', 'SE', 2, 2, 'Nordeste'),
(27, 17, 'Tocantins', 'TO', 1, 1, 'Norte');