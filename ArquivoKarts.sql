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
INSERT INTO
  vendas
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

-- -----------------------------------------------------
-- DELETE na tabela `Cliente`
-- -----------------------------------------------------

   DELETE FROM clientes WHERE id_cliente = 30;
   DELETE FROM clientes WHERE id_cliente = 29;
   DELETE FROM clientes WHERE id_cliente = 28;
   DELETE FROM clientes WHERE id_cliente = 27;
   DELETE FROM clientes WHERE id_cliente = 26; 


<<<<<<< Updated upstream
=======
   
>>>>>>> Stashed changes
