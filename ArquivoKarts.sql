CREATE DATABASE IF NOT EXISTS diagrama_karts;

-- -----------------------------------------------------
-- Table `fornecedor`
-- -----------------------------------------------------
CREATE Table IF NOT EXISTS `fornecedor` (
  `cpnj` INT(14) NOT NULL,
  `nome_empresa` VARCHAR(80) NOT NULL,
  `cep` INT(8) NOT NULL,
  `telefone` INT(13) NOT NULL,
  PRIMARY KEY (`cpnj`)
);

-- -----------------------------------------------------
-- Table `karts`
-- -----------------------------------------------------
CREATE Table IF NOT EXISTS `karts` (
  `id_kart` INT NOT NULL,
  `cor` VARCHAR(45) NOT NULL,
  `modelo` VARCHAR(45) NOT NULL,
  `marca` VARCHAR(45) NOT NULL,
  `ano` DATETIME(4) NOT NULL,
  `quantidade` INT(3) NOT NULL,
  `data_entrada` DATETIME(8) NOT NULL,
  `fornecedor_cpnj` INT(14) NOT NULL,
  PRIMARY KEY (`id_kart`),
  CONSTRAINT `fk_karts_fornecedor` FOREIGN KEY (`fornecedor_cpnj`) REFERENCES `fornecedor` (`cpnj`)
);

-- -----------------------------------------------------
-- Table `funcionarios`
-- -----------------------------------------------------
CREATE Table IF NOT EXISTS `funcionarios` (
  `matricula` INT(11) NOT NULL,
  `cpf` INT(11) NOT NULL,
  `nome_completo` VARCHAR(80) NOT NULL,
  `data_nascimento` DATETIME(8) NOT NULL,
  `cargo` VARCHAR(80) NOT NULL,
  `senha` VARCHAR(80) NOT NULL,
  PRIMARY KEY (`matricula`)
);

-- -----------------------------------------------------
-- Table `clientes`
-- -----------------------------------------------------
CREATE Table IF NOT EXISTS `clientes` (
  `id_cliente` INT NOT NULL AUTO_INCREMENT,
  `nome_completo` VARCHAR(80) NOT NULL,
  `data_nascimento` DATETIME(8) NOT NULL,
  `cnpj` INT(12) NULL,
  `cpf` INT(11) NULL,
  PRIMARY KEY (`id_cliente`)
);

-- -----------------------------------------------------primeiro_nome
-- Table `vendas`
-- -----------------------------------------------------
CREATE Table IF NOT EXISTS `vendas` (
  `id_vendas` INT NOT NULL,
  `data_venda` DATETIME(8) NOT NULL,
  `funcionarios_matricula` INT(11) NOT NULL,
  `clientes_id_cliente` INT NOT NULL,
  cnpj `valor_total` FLOAT NOT NULL,
  PRIMARY KEY (`id_vendas`),
  CONSTRAINT `fk_vendas_funcionarios1` FOREIGN KEY (`funcionarios_matricula`) REFERENCES `funcionarios` (`matricula`) CONSTRAINT `fk_vendas_clientes1` FOREIGN KEY (`clientes_id_cliente`) REFERENCES `clientes` (`id_cliente`)
);

-- -----------------------------------------------------
-- Table `compras`
-- -----------------------------------------------------
CREATE Table IF NOT EXISTS `compras` (
  `karts_id_kart` INT NOT NULL,
  `vendas_id_vendas` INT NOT NULL,
  `quantidade` INT(3) NOT NULL,
  `data_compra` DATETIME(8) NOT NULL,
  PRIMARY KEY (`karts_id_kart`, `vendas_id_vendas`),
  CONSTRAINT `fk_karts_has_vendas_karts1` FOREIGN KEY (`karts_id_kart`) REFERENCES `karts` (`id_kart`) CONSTRAINT `fk_karts_has_vendas_vendas1` FOREIGN KEY (`vendas_id_vendas`) REFERENCES `vendas` (`id_vendas`)
);

-- -----------------------------------------------------
-- Inserção na tabela `fornecedor`
-- -----------------------------------------------------
INSERT INTO
  fornecedor
-- -----------------------------------------------------
-- Inserção na tabela `karts`
-- -----------------------------------------------------
INSERT INTO
  karts
-- -----------------------------------------------------
-- Inserção na tabela `funcionarios`
-- -----------------------------------------------------
INSERT INTO
  funcionarios
-- -----------------------------------------------------
-- Inserção na tabela `clientes`
-- -----------------------------------------------------



-- -----------------------------------------------------
-- Inserção na tabela `vendas`
-- -----------------------------------------------------
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (1, '27/09/2022', '8503418452', 82680227009705, 8159998674.37);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (2, '03/04/2023', '9742754691', 24568883057582, 764244939.85);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (3, '11/08/2022', '6599752993', 76452950016284, 272262174.82);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (4, '02/04/2023', '5130261011', 98363411531040, 3213125493.95);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (5, '28/05/2023', '4709128685', 83186021330051, 5482808083.24);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (6, '17/06/2022', '8315247514', 61045853799452, 5797926834.34);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (7, '10/03/2023', '5196450025', 40166273804472, 355085856.32);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (8, '13/08/2022', '3398167195', 16116503161752, 5413373978.15);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (9, '10/11/2022', '6691712560', 1323413885212, 8798686109.97);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (10, '05/06/2022', '7142025115', 95840728542690, 6655506880.27);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (11, '26/09/2022', '0848123603', 91658815664731, 4956400002.22);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (12, '23/12/2022', '0666976570', 9817016847843, 2312281434.8);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (13, '01/04/2023', '3431682707', 37092220765241, 3517187789.61);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (14, '05/09/2022', '6225905855', 17561860775952, 6243798008.05);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (15, '02/09/2022', '8967246315', 68904837517791, 9534734937.47);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (16, '23/04/2023', '9134291695', 89144143201580, 7969371286.72);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (17, '25/08/2022', '9140561534', 24119198727533, 9008908578.47);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (18, '06/02/2023', '8079447314', 78494478228590, 1294402072.52);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (19, '30/05/2022', '5078391037', 31921526487208, 6351031789.66);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (20, '23/10/2022', '0182052028', 28368586634887, 8068853115.82);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (21, '26/09/2022', '4099528731', 58929016400725, 4627051168.93);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (22, '13/01/2023', '1020220198', 49610907791725, 5711988075.55);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (23, '14/12/2022', '2310749125', 43034635162442, 3770189731.62);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (24, '03/09/2022', '1599194058', 13366979919959, 1629897965.17);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (25, '25/10/2022', '7678151756', 64545837242891, 7595088082.27);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (1, '30/03/2023', '8343012380', 73203598635029, 9277055738.3);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (2, '09/10/2022', '5726586565', 87274178494125, 5337484351.75);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (3, '25/01/2023', '3013759321', 78635864102755, 535763656.24);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (4, '03/04/2023', '0551065141', 26706593324870, 5208066119.15);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (5, '28/06/2022', '8658578097', 45917445060943, 9545492224.97);

-- -----------------------------------------------------
-- Inserção na tabela `compras`
-- -----------------------------------------------------
INSERT INTO
  compras



  --Update
    
--------------------------------------------------------
-- Atualização na tabela `clientes`
-- -----------------------------------------------------

  UPDATE clintes SET nome_completo= "Amanda Alves de Lima" WHERE id_cliente IN (20);
  UPDATE clintes SET nome_completo= "Gabriele Ribeiro" WHERE id_cliente IN (21);
  UPDATE clintes SET nome_completo= "Pietro Hofferman" WHERE id_cliente IN (22); 
  UPDATE clintes SET nome_completo= "Lucas Lemes" WHERE id_cliente IN (23); 
  UPDATE clintes SET nome_completo= "Guilherme Almeida" WHERE id_cliente IN (24); 
  UPDATE clintes SET nome_completo= "Lucas Oliveira" WHERE id_cliente IN (25); 
  
--------------------------------------------------------
-- Atualização na tabela `fornecdor`
-- -----------------------------------------------------


  --Delete

