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

INSERT INTO
  fornecedor
INSERT INTO
  karts
INSERT INTO
  funcionarios
INSERT INTO
  clientes (
    id_cliente,
    nome_completo,
    data_nascimento,
    cnpj,
    cpf
  )
values
  (
    'Othelia Rioch',
    '17/04/1945',
    95326657488422,
    24733110401
  );

INSERT INTO
  clientes (
    id_cliente,
    nome_completo,
    data_nascimento,
    cnpj,
    cpf
  )
VALUES
  (
    'Valina Oakhill',
    '11/02/1949',
    7215865655136,
    55164634344
  );

INSERT INTO
  clientes (
    id_cliente,
    nome_completo,
    data_nascimento,
    cnpj,
    cpf
  )
VALUES
  (
    'Osbourne Phalp',
    '23/06/1923',
    31764388408696,
    6351210286
  );

INSERT INTO
  clientes (
    id_cliente,
    nome_completo,
    data_nascimento,
    cnpj,
    cpf
  )
VALUES
  (
    'Ernesta MacAvddy',
    '07/09/1999',
    56679958729265,
    50291666905
  );

INSERT INTO
  clientes (
    id_cliente,
    nome_completo,
    data_nascimento,
    cnpj,
    cpf
  )
VALUES
  (
    'Izabel Rowcliffe',
    '27/05/1924',
    99170815689629,
    65658447985
  );

INSERT INTO
  clientes (
    id_cliente,
    nome_completo,
    data_nascimento,
    cnpj,
    cpf
  )
VALUES
  (
    'James Climar',
    '28/01/1947',
    74810531602796,
    30596911239
  );

INSERT INTO
  clientes (
    id_cliente,
    nome_completo,
    data_nascimento,
    cnpj,
    cpf
  )
VALUES
  (
    'Tracie Benedidick',
    '02/04/1976',
    38819576504832,
    88042602000
  );

INSERT INTO
  clientes (
    id_cliente,
    nome_completo,
    data_nascimento,
    cnpj,
    cpf
  )
VALUES
  (
    'Dougie Haddrell',
    '06/08/2004',
    44963696832199,
    87319876408
  );

INSERT INTO
  clientes (
    id_cliente,
    nome_completo,
    data_nascimento,
    cnpj,
    cpf
  )
VALUES
  (
    'Miles Dochon',
    '04/10/2019',
    4305579939362,
    19170158874
  );

INSERT INTO
  clientes (
    id_cliente,
    nome_completo,
    data_nascimento,
    cnpj,
    cpf
  )
VALUES
  (
    'Pierrette Earwaker',
    '03/05/1960',
    80803769463454,
    9381012270
  );

INSERT INTO
  clientes (
    id_cliente,
    nome_completo,
    data_nascimento,
    cnpj,
    cpf
  )
VALUES
  (
    'Murial Duckerin',
    '23/10/1948',
    18346936671225,
    59761246631
  );

INSERT INTO
  clientes (
    id_cliente,
    nome_completo,
    data_nascimento,
    cnpj,
    cpf
  )
VALUES
  (
    'Drake Webbe',
    '25/12/1970',
    42000576597467,
    29693744877
  );

INSERT INTO
  clientes (
    id_cliente,
    nome_completo,
    data_nascimento,
    cnpj,
    cpf
  )
VALUES
  (
    'Blayne Parr',
    '02/12/1919',
    83364612195730,
    1924367616
  );

INSERT INTO
  clientes (
    id_cliente,
    nome_completo,
    data_nascimento,
    cnpj,
    cpf
  )
VALUES
  (
    'Viola Maciaszek',
    '05/05/1912',
    null,
    49473152920
  );

INSERT INTO
  clientes (
    id_cliente,
    nome_completo,
    data_nascimento,
    cnpj,
    cpf
  )
VALUES
  (
    'Shalom Bauckham',
    '16/07/1946',
    87105774799570,
    22997021763
  );

INSERT INTO
  clientes (
    id_cliente,
    nome_completo,
    data_nascimento,
    cnpj,
    cpf
  )
VALUES
  (
    'Normy Worsalls',
    '21/06/1945',
    40598063688610,
    2435541033
  );

INSERT INTO
  clientes (
    id_cliente,
    nome_completo,
    data_nascimento,
    cnpj,
    cpf
  )
VALUES
  (
    'Verile Pharoah',
    '12/03/1964',
    53711430312664,
    47357282501
  );

INSERT INTO
  clientes (
    id_cliente,
    nome_completo,
    data_nascimento,
    cnpj,
    cpf
  )
VALUES
  (
    'Fernande Bourthoumieux',
    '12/01/1952',
    59495296002321,
    48320972153
  );

INSERT INTO
  clientes (
    id_cliente,
    nome_completo,
    data_nascimento,
    cnpj,
    cpf
  )
VALUES
  (
    'Seth Bossons',
    '14/08/1953',
    57239764668784,
    16874547513
  );

INSERT INTO
  clientes (
    id_cliente,
    nome_completo,
    data_nascimento,
    cnpj,
    cpf
  )
VALUES
  (
    'Abel Coaten',
    '20/11/1965',
    21097235233379,
    40332908096
  );

INSERT INTO
  clientes (
    id_cliente,
    nome_completo,
    data_nascimento,
    cnpj,
    cpf
  )
VALUES
  (
    'Mignon Stirzaker',
    '28/10/1982',
    22357715243561,
    24140998941
  );

INSERT INTO
  clientes (
    id_cliente,
    nome_completo,
    data_nascimento,
    cnpj,
    cpf
  )
VALUES
  (
    'Melvyn Reder',
    '23/11/1969',
    85646032189616,
    5253614163
  );

INSERT INTO
  clientes (
    id_cliente,
    nome_completo,
    data_nascimento,
    cnpj,
    cpf
  )
VALUES
  (
    'Royal Stockle',
    '28/02/1972',
    92271061131553,
    60799127938
  );

INSERT INTO
  clientes (
    id_cliente,
    nome_completo,
    data_nascimento,
    cnpj,
    cpf
  )
VALUES
  (
    'Mimi Cyster',
    '13/02/1985',
    53525974045016,
    31739238208
  );

INSERT INTO
  clientes (
    id_cliente,
    nome_completo,
    data_nascimento,
    cnpj,
    cpf
  )
VALUES
  (
    'Nicolette Eagleton',
    '21/12/1943',
    5266903160218,
    15467588402
  );

INSERT INTO
  vendas
INSERT INTO
  compras

  --Update