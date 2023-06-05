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
  PRIMARY KEY (`id_kart`) AUTO_INCREMENT,
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
  PRIMARY KEY (`id_cliente`) AUTO_INCREMENT
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
  PRIMARY KEY (`id_vendas`) AUTO_INCREMENT,
  CONSTRAINT `fk_vendas_funcionarios1` FOREIGN KEY (`funcionarios_matricula`) REFERENCES `funcionarios` (`matricula`) CONSTRAINT `fk_vendas_clientes1` FOREIGN KEY (`clientes_id_cliente`) REFERENCES `clientes` (`id_cliente`)
);

-- -----------------------------------------------------
-- Table `compras`
-- -----------------------------------------------------
CREATE Table IF NOT EXISTS `compras` (
  `id_compras` INT NOT NULL,
  `karts_id_kart` INT NOT NULL,
  `vendas_id_vendas` INT NOT NULL,
  `quantidade` INT(3) NOT NULL,
  `data_compra` DATETIME(8) NOT NULL,
  PRIMARY KEY (`id_compras`) AUTO_INCREMENT,
  CONSTRAINT `fk_karts_has_vendas_karts1` FOREIGN KEY (`karts_id_kart`) REFERENCES `karts` (`id_kart`) CONSTRAINT `fk_karts_has_vendas_vendas1` FOREIGN KEY (`vendas_id_vendas`) REFERENCES `vendas` (`id_vendas`)
);

-- -----------------------------------------------------
-- Inserção na tabela `fornecedor`
-- -----------------------------------------------------
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (80584893791417, 'Abatz', '49035-296', '6506447239');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (64736926484180, 'Twimbo', '44924-008', '3635163605');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (50334467586818, 'Flashpoint', '49999-075', '2068416395');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (81683216606938, 'Cogibox', '52686-342', '7913256347');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (91724407837430, 'Yozio', '0904-6406', '8682875918');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (48325581286317, 'Roodel', '0268-1525', '3537142129');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (36180840066057, 'Rhynyx', '43353-742', '9405819849');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (93542953589069, 'Zoomcast', '67544-237', '3866805240');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (48147696534048, 'Wordify', '49999-115', '8117217713');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (32239849297317, 'Aivee', '53808-0659', '5856170489');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (90181543011687, 'Devshare', '54879-011', '3556628496');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (70974820940272, 'Roombo', '59779-578', '6262375809');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (41606908027094, 'Zoomlounge', '55926-0022', '4463193975');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (42055734180419, 'Twitterworks', '53808-0239', '1424783332');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (56060251629096, 'Twitternation', '51293-605', '1386882578');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (83031077871639, 'Dablist', '57520-0411', '3763186120');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (43035458657167, 'Skimia', '52125-373', '5562895336');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (58136182163095, 'Dabjam', '60505-2968', '6537143543');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (48855449897432, 'Rhycero', '0409-1778', '6931943391');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (401702561542, 'Youspan', '48951-1123', '9043971032');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (96160704771023, 'Bluezoom', '63736-013', '4095751345');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (51663115717740, 'Abata', '0904-6340', '4554635940');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (28324356754189, 'Buzzdog', '49817-0050', '4525835317');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (85892187158679, 'Edgeblab', '10544-109', '1378607778');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (94817259501371, 'Bluezoom', '49288-0254', '2082167447');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (58283210604843, 'Layo', '43419-381', '4541381139');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (58484734206621, 'Mydeo', '68752-022', '2317011831');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (87218138265292, 'Fadeo', '55312-120', '6402389537');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (909186396275, 'Plambee', '35617-399', '1047685030');
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (36354525738385, 'Brainsphere', '54575-907', '2748911289');
-- -----------------------------------------------------
-- Inserção na tabela `karts`
-- -----------------------------------------------------
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Blue', 'Amanti', 'Kia', '05/21/1973', 41, '01/30/1952', 269371047.28);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Purple', 'Yukon XL 2500', 'GMC', '07/19/1902', 73, '04/17/1995', 574575536.26);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Khaki', 'B-Series', 'Mazda', '10/15/1928', 76, '08/06/2008', 46064345.13);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Yellow', 'X5 M', 'BMW', '04/21/1966', 45, '12/15/2007', 769673924.18);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Teal', 'Grand Vitara', 'Suzuki', '09/17/2016', 95, '05/17/1984', 318887065.15);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Red', '5 Series', 'BMW', '12/15/1952', 27, '02/18/1974', 187907114.41);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Orange', 'Estate', 'Buick', '05/10/1980', 65, '10/28/1976', 818579779.72);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Fuscia', 'Silverado 2500', 'Chevrolet', '02/19/1997', 52, '11/14/2019', 534793721.02);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Green', 'Silverado', 'Chevrolet', '08/06/1999', 23, '09/05/1972', 427337661.14);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Indigo', 'Grand Marquis', 'Mercury', '06/05/1902', 75, '01/05/1992', 383690327.89);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Crimson', 'Express 1500', 'Chevrolet', '08/20/2004', 92, '10/02/2019', 910456457.39);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Pink', 'Tundra', 'Mitsubishi', '10/14/1907', 46, '03/27/1954', 828846084.98);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Orange', 'Lancer Evolution', 'Mitsubishi', '10/02/1953', 11, '03/05/1931', 9486942.62);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Fuscia', 'XJ', 'Jaguar', '05/19/2007', 77, '04/07/2003', 202126165.39);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Blue', 'Ram 1500', 'Dodge', '05/09/1903', 21, '12/02/1955', 975531198.68);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Mauv', 'Crown Victoria', 'Ford', '07/27/2014', 57, '12/07/1923', 870064403.29);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Goldenrod', 'Discovery', 'Land Rover', '11/19/1908', 73, '02/17/1968', 22939547.65);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Turquoise', 'FJ Cruiser', 'Toyota', '06/13/1937', 68, '11/23/2011', 811548084.97);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Maroon', 'Explorer', 'Ford', '02/26/2000', 40, '04/09/2013', 739781246.46);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Orange', '5000CS Quattro', 'Audi', '04/25/1909', 41, '06/23/2011', 280438192.92);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Maroon', 'Terraza', 'Buick', '09/24/1979', 31, '03/27/1906', 594526695.36);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Purple', '323', 'Mazda', '04/17/1930', 9, '12/07/1912', 712963290.17);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Puce', 'S4', 'Audi', '12/18/1973', 36, '09/05/1985', 797272768.51);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Orange', 'Range Rover', 'Land Rover', '07/12/1992', 83, '05/04/1979', 849259251.92);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Violet', '6 Series', 'BMW', '09/07/2001', 88, '06/22/2012', 54073076.06);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Puce', 'Tempo', 'Ford', '06/30/1910', 67, '10/21/1996', 427455575.43);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Orange', 'Tahoe', 'Chevrolet', '04/15/1953', 55, '03/23/1946', 285706093.16);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Pink', 'Blazer', 'Chevrolet', '03/04/1979', 93, '01/24/1975', 827080779.88);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Orange', 'Express 3500', 'Chevrolet', '07/25/1957', 34, '06/08/1901', 647891729.1);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Crimson', 'Mustang', 'Ford', '11/05/1928', 12, '10/14/1984', 952695683.77);
-- -----------------------------------------------------
-- Inserção na tabela `funcionarios`
-- -----------------------------------------------------
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (343274448895, 505169798, 'Vidovic Croyser', '22/10/1996', 'Construction Expeditor', 'nCRK5C');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (78407238283, 116521102, 'Celisse Vines', '03/06/1988', 'Project Manager', 'ZhFIGht');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (17258890218, 561135781, 'Evyn Garfit', '17/07/1947', 'Surveyor', 'HZ1DmWDDVu');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (240702891391, 841368382, 'Urban Bignell', '05/03/1995', 'Project Manager', 'mwgMxXgGN');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (517473845394, 729731799, 'Barnett Waddilove', '14/11/1973', 'Construction Manager', 'nmP5uL');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (308605066431, 912815550, 'Gregory Vondruska', '13/01/1975', 'Engineer', '3fZFNGT');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (649433447647, 739021975, 'Felizio Floch', '31/07/1992', 'Construction Manager', '0SAzg3');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (72969392167, 963730508, 'Boyce Paske', '10/08/1989', 'Estimator', 'rcRaHfAIKT');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (26816589067, 956351102, 'Zach Pountain', '06/11/1932', 'Construction Expeditor', 'AujnTR8E1E');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (217620920849, 92062181, 'Tybi Otterwell', '27/02/1945', 'Construction Foreman', 'DnN6lnPVe7Qd');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (24588293509, 230313124, 'Rutger Clitsome', '04/12/2021', 'Construction Expeditor', 'XMogwKQ');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (684996625057, 875404482, 'Olenolin Keyho', '17/06/2017', 'Construction Manager', 'N3I2PiFSs');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (374339337377, 833763015, 'Danyelle Van Niekerk', '30/05/1901', 'Surveyor', 'YeQdQE8ZAN');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (421252077642, 322904050, 'Eugenie Lacroux', '30/12/1912', 'Surveyor', 'gwHFC7UB');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (258572839420, 879898874, 'Joycelin D''Aubney', '20/11/1959', 'Construction Foreman', 'mYLMTS');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (598296232858, 400097390, 'Salvatore Meikle', '17/07/1901', 'Construction Worker', 'O1qVoG9n');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (53509919033, 845745666, 'Grethel Litherland', '29/01/1929', 'Project Manager', 'tVjFGpXb9');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (542697038581, 915469434, 'Marchall Latch', '05/06/2010', 'Project Manager', 'bw3a0RDeA7');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (374564563798, 879712038, 'Ian Gladeche', '24/08/1947', 'Engineer', 'vW0i9dg23h5o');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (854750570112, 525000141, 'Dode Larkcum', '10/05/1944', 'Engineer', 'RtckAG8NAPsM');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (39259212899, 545151179, 'Bondie Moroney', '24/05/1961', 'Construction Foreman', 'g8lr7xF');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (831641212700, 415344261, 'Sisile Venditto', '03/06/1998', 'Construction Foreman', 'kjmKVvZc2YLp');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (400646031526, 977810480, 'Fabiano Ockleshaw', '19/11/1979', 'Engineer', '6MroE3');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (101963251547, 464656524, 'Chad Bruster', '04/01/2018', 'Surveyor', 'NwmZHmeX6JxI');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (158783648950, 424915185, 'Cynthie Lander', '08/02/1957', 'Architect', 'Xbz5fRKC');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (574075257753, 772317000, 'Katharine Guyon', '26/05/1908', 'Surveyor', 'fUCHdG93NC7R');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (953247217, 246104239, 'Bronnie Filkov', '09/02/1956', 'Subcontractor', '0HiACp');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (521482321464, 266704061, 'Dennie Garford', '12/05/1951', 'Construction Manager', 'yqn1eQxyL');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (930832511236, 84724742, 'Ethan Thaxton', '11/07/1976', 'Engineer', 'mM5x0DIxnyx');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (50825891999, 912713954, 'Gertrude Bossom', '13/02/1958', 'Construction Manager', 'IMy8Qc');

-- -----------------------------------------------------
-- Inserção na tabela `clientes`
-- -----------------------------------------------------
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Lane Sanbroke', '11/18/1953', 40426168353588, 11121366585);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Stearne Aldwick', '10/19/1941', 99305333659392, 65533156549);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Jan Mennithorp', '04/16/1959', 97890698398156, 4686568125);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Maris Webland', '02/09/1969', 56154681655742, 36953114893);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Toma Esom', '10/17/1999', 79624704963510, 76880969356);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Ikey Spyer', '11/07/1917', 78359615705485, 42571664366);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Forster Grindle', '11/21/1969', 26986569093262, 29936228586);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Myriam Jarrard', '02/27/1968', 82367225004665, 62497261654);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Nataline Labro', '06/22/1985', 86504768990634, 56121664879);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Perle Dennehy', '07/13/1986', 69151761661225, 49934907587);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Edsel Rizzi', '11/25/1960', 8850207778002, 8593526271);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Bennett Craggs', '03/06/1910', 95969594516477, 30277095265);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Kaila Ludovici', '09/11/2021', 13214042151194, 19327062582);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Pru Winders', '06/07/1928', 99564296440135, 61912887753);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Biddy Leneve', '03/09/1969', 98086863151615, 41350575889);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Heinrick Abbis', '02/12/1939', 31292341797838, 79416537222);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Mick Jerschke', '07/30/1934', 949995462604, 80198062920);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Lenard Galliard', '12/30/1924', 69719593128575, 87140912818);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Doralynn Pevreal', '01/31/1987', 71875137127796, 33219800048);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Gabby Linnock', '01/23/1911', 23937040229189, 86637848366);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Avigdor Hodjetts', '01/28/2001', 20738005164220, 24586769197);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Rog Bottoner', '04/04/1968', 58421871698050, 61277792148);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Ania Cheeld', '05/27/1949', 91811081853221, 50854800524);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Jacinda Sargeant', '07/27/1926', 43948666947055, 9702507946);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Kipp Epple', '07/16/1964', 57412027921757, 40558190478);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Conant Hatley', '12/29/1994', 67366840693929, 35315874411);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Idette Vallentin', '07/25/1962', 77686328560250, 50493611763);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Connor Ivory', '12/30/2014', 45462841573911, 43252941093);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Stevana Rodman', '11/18/2019', 40656334743843, 36725080596);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Kellie Aylott', '11/14/1969', 5104493639694, 17441269794);

-- -----------------------------------------------------
-- Inserção na tabela `vendas`
-- -----------------------------------------------------
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('27/09/2022', '8503418452', 82680227009705, 8159998674.37);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('03/04/2023', '9742754691', 24568883057582, 764244939.85);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('11/08/2022', '6599752993', 76452950016284, 272262174.82);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('02/04/2023', '5130261011', 98363411531040, 3213125493.95);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('28/05/2023', '4709128685', 83186021330051, 5482808083.24);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('17/06/2022', '8315247514', 61045853799452, 5797926834.34);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('10/03/2023', '5196450025', 40166273804472, 355085856.32);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('13/08/2022', '3398167195', 16116503161752, 5413373978.15);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('10/11/2022', '6691712560', 1323413885212, 8798686109.97);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('05/06/2022', '7142025115', 95840728542690, 6655506880.27);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('26/09/2022', '0848123603', 91658815664731, 4956400002.22);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('23/12/2022', '0666976570', 9817016847843, 2312281434.8);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('01/04/2023', '3431682707', 37092220765241, 3517187789.61);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('05/09/2022', '6225905855', 17561860775952, 6243798008.05);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('02/09/2022', '8967246315', 68904837517791, 9534734937.47);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('23/04/2023', '9134291695', 89144143201580, 7969371286.72);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('25/08/2022', '9140561534', 24119198727533, 9008908578.47);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('06/02/2023', '8079447314', 78494478228590, 1294402072.52);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('30/05/2022', '5078391037', 31921526487208, 6351031789.66);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('23/10/2022', '0182052028', 28368586634887, 8068853115.82);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('26/09/2022', '4099528731', 58929016400725, 4627051168.93);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('13/01/2023', '1020220198', 49610907791725, 5711988075.55);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('14/12/2022', '2310749125', 43034635162442, 3770189731.62);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('03/09/2022', '1599194058', 13366979919959, 1629897965.17);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('25/10/2022', '7678151756', 64545837242891, 7595088082.27);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('30/03/2023', '8343012380', 73203598635029, 9277055738.3);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('09/10/2022', '5726586565', 87274178494125, 5337484351.75);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('25/01/2023', '3013759321', 78635864102755, 535763656.24);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('03/04/2023', '0551065141', 26706593324870, 5208066119.15);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES ('28/06/2022', '8658578097', 45917445060943, 9545492224.97);

-- -----------------------------------------------------
-- Inserção na tabela `compras`
-- -----------------------------------------------------
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (58415041953343, 54806524944779, 70, 1484667778317, '27/05/2001');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (70786975411112, 59526398541733, 21, 49626798224043, '08/01/1986');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (13072940984189, 70685098851839, 75, 25738416752463, '25/03/1979');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (55704062019270, 89025783792831, 97, 46639324457635, '07/11/1979');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (13349478920963, 20171495491977, 99, 37028244530380, '03/09/1998');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (64576095128972, 46720142934651, 56, 62407669966959, '24/12/1978');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (34557448879703, 76447243377627, 51, 18811700501211, '11/05/1964');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (33182586897352, 79385631908707, 52, 82320400093082, '08/09/1959');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (59493980023057, 61136477133093, 52, 37792381977843, '08/06/1953');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (82083321913067, 89350417131030, 53, 87260707206999, '04/03/2016');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (11379647670528, 58211999907932, 62, 37366307165576, '07/05/1987');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (44675962816694, 23880280559043, 14, 82292302187746, '11/05/1971');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (95759870228334, 34233692883056, 79, 32054586536063, '12/12/2021');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (74381305834178, 32059950710114, 71, 96915046428203, '10/04/1959');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (41997193761465, 77271042821853, 68, 37307592767081, '23/05/2009');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (63756765087987, 30050983702585, 77, 95468196232288, '27/08/1967');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (70960638022294, 81752419462964, 93, 74508030118631, '22/12/1991');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (48573405898186, 39339096947470, 20, 42829799254130, '13/11/1995');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (82853045936132, 74642185224041, 70, 57314467593545, '19/12/1982');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (66213682877141, 60535499531100, 63, 6730543417450, '22/09/1957');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (31244933016292, 43033533953154, 52, 92459335879680, '08/09/1979');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (29445497277257, 21996003263362, 92, 51815950285434, '05/02/1981');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (4123919502089, 67009105282257, 34, 6601274780695, '19/12/1974');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (59969996420722, 43188729322560, 81, 93787275361720, '22/09/2017');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (30103766219782, 93841364793794, 15, 51051134305448, '17/05/2013');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (33492306317786, 3834119292331, 11, 49570758221600, '12/06/1990');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (74723998387464, 24963725906623, 96, 30254658192872, '24/02/2015');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (84057092116704, 43521078486401, 94, 42852102950553, '20/09/1997');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (29533180795721, 63032493220775, 66, 33964699983894, '07/09/1998');
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (93943958416838, 77096094569864, 11, 80863929041076, '07/04/1996');


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
  
----------------------------------------------------------
-- Atualização na tabela `fornecedor` chave primario cnpj
----------------------------------------------------------

  UPDATE fornceedor SET nome_mpresa= "Carros Red Bull" WHERE cnpj IN ();
  UPDATE fornceedor SET nome_mpresa= "Car Ferrari" WHERE cnpj IN ();
  UPDATE fornceedor SET nome_mpresa= "Kart Leclerc" WHERE cnpj IN ();
  UPDATE fornceedor SET nome_mpresa= "Kart Obama" WHERE cnpj IN ();
  UPDATE fornceedor SET nome_mpresa= "Kart Barack" WHERE cnpj IN ();

----------------------------------------------------------
-- Atualização na tabela `karts` chave primario id_kart
----------------------------------------------------------
  
  UPDATE karts SET cor= "Amarelo" WHERE id_karts IN (20);
  UPDATE karts SET cor= "Verde" WHERE id_karts IN (21);
  UPDATE karts SET cor= "Azul" WHERE id_karts IN (22);
  UPDATE karts SET cor= "Preto" WHERE id_karts IN (23);
  UPDATE karts SET cor= "Branco" WHERE id_karts IN (24);
  UPDATE karts SET cor= "Roxo" WHERE id_karts IN (25);

-------------------------------------------------------------
-- Atualização na tabela `compras` chave primario id_compras
-------------------------------------------------------------

  UPDATE compras SET quantidade= '8' WHERE id_compras IN (20);
  UPDATE compras SET quantidade= '7' WHERE id_compras IN (21);
  UPDATE compras SET quantidade= '6' WHERE id_compras IN (22);
  UPDATE compras SET quantidade= '5' WHERE id_compras IN (23);
  UPDATE compras SET quantidade= '4' WHERE id_compras IN (24);
  UPDATE compras SET quantidade= '3' WHERE id_compras IN (25);

-------------------------------------------------------------
-- Atualização na tabela `vendas` chave primario id_vendas
-------------------------------------------------------------

  UPDATE vendas SET data_venda= '08-11-2023' WHERE id_vendas IN (20);
  UPDATE vendas SET data_venda= '11-11-2023' WHERE id_vendas IN (21);
  UPDATE vendas SET data_venda= '21-11-2023' WHERE id_vendas IN (22);
  UPDATE vendas SET data_venda= '09-11-2023' WHERE id_vendas IN (23);
  UPDATE vendas SET data_venda= '11-09-2023' WHERE id_vendas IN (24);
  UPDATE vendas SET data_venda= '11-01-2023' WHERE id_vendas IN (25);

----------------------------------------------------------------
-- Atualização na tabela `funcionarios` chave primario matricula
----------------------------------------------------------------
  
  UPDATE funcionarios SET cargo= "Analista de Estoque" WHERE matricula IN ();
  UPDATE funcionarios SET cargo= "Supervisor" WHERE matricula IN ();
  UPDATE funcionarios SET cargo= "Grente" WHERE matricula IN ();
  UPDATE funcionarios SET cargo= "Vendedor" WHERE matricula IN ();
  UPDATE funcionarios SET cargo= "Caixa" WHERE matricula IN ();


 --Delete

-- -----------------------------------------------------
-- DELETE na tabela `Cliente`
-- -----------------------------------------------------

   DELETE FROM clientes WHERE id_cliente = 30;
   DELETE FROM clientes WHERE id_cliente = 29;
   DELETE FROM clientes WHERE id_cliente = 28;
   DELETE FROM clientes WHERE id_cliente = 27;
   DELETE FROM clientes WHERE id_cliente = 26; 

-- -----------------------------------------------------
-- DELETE na tabela `fornecedor`
-- -----------------------------------------------------

   DELETE FROM fornecedor WHERE id_fornecedor = 30;
   DELETE FROM fornecedor WHERE id_fornecedor = 29;
   DELETE FROM fornecedor WHERE id_fornecedor = 28;
   DELETE FROM fornecedor WHERE id_fornecedor = 27;
   DELETE FROM fornecedor WHERE id_fornecedor = 26;
 
-- -----------------------------------------------------
-- DELETE na tabela `kart`
-- -----------------------------------------------------
 
   DELETE FROM kart WHERE id_kart = 30;
   DELETE FROM kart WHERE id_kart = 29;
   DELETE FROM kart WHERE id_kart = 28;
   DELETE FROM kart WHERE id_kart = 27;
   DELETE FROM kart WHERE id_kart = 26;

-- -----------------------------------------------------
-- DELETE na tabela `funcionarios`
-- -----------------------------------------------------

   DELETE FROM funcionario WHERE id_funcionario = 30;
   DELETE FROM funcionario WHERE id_funcionario = 29;
   DELETE FROM funcionario WHERE id_funcionario = 28;
   DELETE FROM funcionario WHERE id_funcionario = 27;
   DELETE FROM funcionario WHERE id_funcionario = 26;

-- -----------------------------------------------------
-- DELETE na tabela `compras`
-- -----------------------------------------------------

   DELETE FROM compras WHERE id_compras = 30;
   DELETE FROM compras WHERE id_compras = 29;
   DELETE FROM compras WHERE id_compras = 28;
   DELETE FROM compras WHERE id_compras = 27;
   DELETE FROM compras WHERE id_compras = 26;

-- -----------------------------------------------------
-- DELETE na tabela `vendas`
-- -----------------------------------------------------   

   DELETE FROM vendas WHERE id_vendas = 30;
   DELETE FROM vendas WHERE id_vendas = 29;
   DELETE FROM vendas WHERE id_vendas = 28;
   DELETE FROM vendas WHERE id_vendas = 27;
   DELETE FROM vendas WHERE id_vendas = 26;
   
