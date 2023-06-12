DROP DATABASE IF EXISTS diagrama_karts;

CREATE DATABASE IF NOT EXISTS diagrama_karts;

USE diagrama_karts;

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
  PRIMARY KEY AUTO_INCREMENT (`id_kart`),
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
  `id_cliente` INT NOT NULL,
  `nome_completo` VARCHAR(80) NOT NULL,
  `data_nascimento` DATETIME(8) NOT NULL,
  `cnpj` INT(12) NULL,
  `cpf` INT(11) NULL,
  PRIMARY KEY AUTO_INCREMENT (`id_cliente`)
);

-- -----------------------------------------------------primeiro_nome
-- Table `vendas`
-- -----------------------------------------------------
CREATE Table IF NOT EXISTS `vendas` (
  `id_vendas` INT NOT NULL,
  `data_venda` DATETIME(8) NOT NULL,
  `funcionarios_matricula` INT(11) NOT NULL,
  `clientes_id_cliente` INT NOT NULL,
  `valor_total` FLOAT NOT NULL,
  PRIMARY KEY AUTO_INCREMENT (`id_vendas`),
  CONSTRAINT `fk_vendas_funcionarios1` FOREIGN KEY (`funcionarios_matricula`) REFERENCES `funcionarios` (`matricula`),
  CONSTRAINT `fk_vendas_clientes1` FOREIGN KEY (`clientes_id_cliente`) REFERENCES `clientes` (`id_cliente`)
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
  PRIMARY KEY AUTO_INCREMENT (`id_compras`),
  CONSTRAINT `fk_karts_has_vendas_karts1` FOREIGN KEY (`karts_id_kart`) REFERENCES `karts` (`id_kart`),
  CONSTRAINT `fk_karts_has_vendas_vendas1` FOREIGN KEY (`vendas_id_vendas`) REFERENCES `vendas` (`id_vendas`)
);

-- -----------------------------------------------------
-- Inserção na tabela `fornecedor`
-- -----------------------------------------------------
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (80584893791417, 'Abatz', 49035296, 6506447239);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (64736926484180, 'Twimbo', 44924008, 3635163605);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (50334467586818, 'Flashpoint', 49999075, 2068416395);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (81683216606938, 'Cogibox', 52686342, 7913256347);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (91724407837430, 'Yozio', 09046406, 8682875918);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (48325581286317, 'Roodel', 02681525, 3537142129);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (36180840066057, 'Rhynyx', 43353742, 9405819849);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (93542953589069, 'Zoomcast', 67544237, 3866805240);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (48147696534048, 'Wordify', 49999115, 8117217713);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (32239849297317, 'Aivee', 538080659, 5856170489);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (90181543011687, 'Devshare', 54879011, 3556628496);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (70974820940272, 'Roombo', 59779578, 6262375809);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (41606908027094, 'Zoomlounge', 559260022, 4463193975);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (42055734180419, 'Twitterworks', 538080239, 1424783332);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (56060251629096, 'Twitternation', 51293605, 1386882578);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (83031077871639, 'Dablist', 575200411, 3763186120);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (43035458657167, 'Skimia', 52125373, 5562895336);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (58136182163095, 'Dabjam', 605052968, 6537143543);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (48855449897432, 'Rhycero', 04091778, 6931943391);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (401702561542, 'Youspan', 489511123, 9043971032);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (96160704771023, 'Bluezoom', 63736013, 4095751345);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (51663115717740, 'Abata', 09046340, 4554635940);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (28324356754189, 'Buzzdog', 498170050, 4525835317);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (85892187158679, 'Edgeblab', 10544109, 1378607778);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (94817259501371, 'Bluezoom', 492880254, 2082167447);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (58283210604843, 'Layo', 43419381, 4541381139);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (58484734206621, 'Mydeo', 68752022, 2317011831);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (87218138265292, 'Fadeo', 55312120, 6402389537);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (909186396275, 'Plambee', 35617399, 1047685030);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (36354525738385, 'Brainsphere', 54575907, 2748911289);
-- -----------------------------------------------------
-- Inserção na tabela `karts`
-- -----------------------------------------------------
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Blue', 'Amanti', 'Kia', 1973, 41, 01301952, 269371047.28);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Purple', 'Yukon XL 2500', 'GMC', 1902, 73, 04171995, 574575536.26);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Khaki', 'B-Series', 'Mazda', 1928, 76, 08062008, 46064345.13);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Yellow', 'X5 M', 'BMW', 1966, 45, 12152007, 769673924.18);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Teal', 'Grand Vitara', 'Suzuki', 2016, 95, 05171984, 318887065.15);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Red', '5 Series', 'BMW', 1952, 27, 02181974, 187907114.41);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Orange', 'Estate', 'Buick', 1980, 65, 10281976, 818579779.72);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Fuscia', 'Silverado 2500', 'Chevrolet', 02191997, 52, 11142019, 534793721.02);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Green', 'Silverado', 'Chevrolet', 1999, 23, 09051972, 427337661.14);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Indigo', 'Grand Marquis', 'Mercury', 1902, 75, 01051992, 383690327.89);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Crimson', 'Express 1500', 'Chevrolet', 2004, 92, 10022019, 910456457.39);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Pink', 'Tundra', 'Mitsubishi', 1907, 46, 03271954, 828846084.98);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Orange', 'Lancer Evolution', 'Mitsubishi', 1953, 11, 03051931, 9486942.62);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Fuscia', 'XJ', 'Jaguar', 2007, 77, 04072003, 202126165.39);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Blue', 'Ram 1500', 'Dodge', 1903, 21, 12021955, 975531198.68);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Mauv', 'Crown Victoria', 'Ford', 2014, 57, 12071923, 870064403.29);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Goldenrod', 'Discovery', 'Land Rover', 1908, 73, 02171968, 22939547.65);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Turquoise', 'FJ Cruiser', 'Toyota', 1937, 68, 11232011, 811548084.97);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Maroon', 'Explorer', 'Ford', 2000, 40, 04092013, 739781246.46);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Orange', '5000CS Quattro', 'Audi', 1909, 41, 06232011, 280438192.92);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Maroon', 'Terraza', 'Buick', 1979, 31, 03271906, 594526695.36);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Purple', '323', 'Mazda', 1930, 9, 12071912, 712963290.17);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Puce', 'S4', 'Audi', 1973, 36, 09051985, 797272768.51);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Orange', 'Range Rover', 'Land Rover', 1992, 83, 05041979, 849259251.92);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Violet', '6 Series', 'BMW', 2001, 88, 06222012, 54073076.06);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Puce', 'Tempo', 'Ford', 1910, 67, 10211996, 427455575.43);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Orange', 'Tahoe', 'Chevrolet', 1953, 55, 03231946, 285706093.16);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Pink', 'Blazer', 'Chevrolet', 1979, 93, 01241975, 827080779.88);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Orange', 'Express 3500', 'Chevrolet', 1957, 34, 06081901, 647891729.1);
INSERT INTO karts (id_Kart, cor, modelo, marca, ano, quantidade, data_Entrada, preco) VALUES ('Crimson', 'Mustang', 'Ford', 1928, 12, 10141984, 952695683.77);
-- -----------------------------------------------------
-- Inserção na tabela `funcionarios`
-- -----------------------------------------------------
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (343274448895, 505169798, 'Vidovic Croyser', 22101996, 'Construction Expeditor', 'nCRK5C');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (78407238283, 116521102, 'Celisse Vines', 03061988, 'Project Manager', 'ZhFIGht');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (17258890218, 561135781, 'Evyn Garfit', 17071947, 'Surveyor', 'HZ1DmWDDVu');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (240702891391, 841368382, 'Urban Bignell', 05031995, 'Project Manager', 'mwgMxXgGN');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (517473845394, 729731799, 'Barnett Waddilove', 14111973, 'Construction Manager', 'nmP5uL');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (308605066431, 912815550, 'Gregory Vondruska', 13011975, 'Engineer', '3fZFNGT');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (649433447647, 739021975, 'Felizio Floch', 31071992, 'Construction Manager', '0SAzg3');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (72969392167, 963730508, 'Boyce Paske', 10081989, 'Estimator', 'rcRaHfAIKT');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (26816589067, 956351102, 'Zach Pountain', 06111932, 'Construction Expeditor', 'AujnTR8E1E');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (217620920849, 92062181, 'Tybi Otterwell', 27021945, 'Construction Foreman', 'DnN6lnPVe7Qd');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (24588293509, 230313124, 'Rutger Clitsome', 04122021, 'Construction Expeditor', 'XMogwKQ');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (684996625057, 875404482, 'Olenolin Keyho', 17062017, 'Construction Manager', 'N3I2PiFSs');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (374339337377, 833763015, 'Danyelle Van Niekerk', 30051901, 'Surveyor', 'YeQdQE8ZAN');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (421252077642, 322904050, 'Eugenie Lacroux', 30121912, 'Surveyor', 'gwHFC7UB');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (258572839420, 879898874, 'Joycelin D''Aubney', 20111959, 'Construction Foreman', 'mYLMTS');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (598296232858, 400097390, 'Salvatore Meikle', 17071901, 'Construction Worker', 'O1qVoG9n');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (53509919033, 845745666, 'Grethel Litherland', 29011929, 'Project Manager', 'tVjFGpXb9');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (542697038581, 915469434, 'Marchall Latch', 05062010, 'Project Manager', 'bw3a0RDeA7');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (374564563798, 879712038, 'Ian Gladeche', 24081947, 'Engineer', 'vW0i9dg23h5o');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (854750570112, 525000141, 'Dode Larkcum', 10051944, 'Engineer', 'RtckAG8NAPsM');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (39259212899, 545151179, 'Bondie Moroney', 24051961, 'Construction Foreman', 'g8lr7xF');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (831641212700, 415344261, 'Sisile Venditto', 03061998, 'Construction Foreman', 'kjmKVvZc2YLp');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (400646031526, 977810480, 'Fabiano Ockleshaw', 19111979, 'Engineer', '6MroE3');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (101963251547, 464656524, 'Chad Bruster', 04012018, 'Surveyor', 'NwmZHmeX6JxI');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (158783648950, 424915185, 'Cynthie Lander', 08021957, 'Architect', 'Xbz5fRKC');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (574075257753, 772317000, 'Katharine Guyon', 26051908, 'Surveyor', 'fUCHdG93NC7R');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (953247217, 246104239, 'Bronnie Filkov', 09021956, 'Subcontractor', '0HiACp');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (521482321464, 266704061, 'Dennie Garford', 12051951, 'Construction Manager', 'yqn1eQxyL');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (930832511236, 84724742, 'Ethan Thaxton', 11071976, 'Engineer', 'mM5x0DIxnyx');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (50825891999, 912713954, 'Gertrude Bossom', 13021958, 'Construction Manager', 'IMy8Qc');

-- -----------------------------------------------------
-- Inserção na tabela `clientes`
-- -----------------------------------------------------
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Lane Sanbroke', 11181953, 40426168353588, 11121366585);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Stearne Aldwick', 10191941, 99305333659392, 65533156549);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Jan Mennithorp', 04161959, 97890698398156, 4686568125);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Maris Webland', 02091969, 56154681655742, 36953114893);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Toma Esom', 10171999, 79624704963510, 76880969356);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Ikey Spyer', 11071917, 78359615705485, 42571664366);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Forster Grindle', 11211969, 26986569093262, 29936228586);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Myriam Jarrard', 02271968, 82367225004665, 62497261654);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Nataline Labro', 06221985, 86504768990634, 56121664879);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Perle Dennehy', 07131986, 69151761661225, 49934907587);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Edsel Rizzi', 11251960, 8850207778002, 8593526271);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Bennett Craggs', 03061910, 95969594516477, 30277095265);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Kaila Ludovici', 09112021, 13214042151194, 19327062582);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Pru Winders', 06071928, 99564296440135, 61912887753);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Biddy Leneve', 03091969, 98086863151615, 41350575889);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Heinrick Abbis', 02121939, 31292341797838, 79416537222);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Mick Jerschke', 07301934, 949995462604, 80198062920);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Lenard Galliard', 12301924, 69719593128575, 87140912818);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Doralynn Pevreal', 01311987, 71875137127796, 33219800048);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Gabby Linnock', 01231911, 23937040229189, 86637848366);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Avigdor Hodjetts', 01282001, 20738005164220, 24586769197);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Rog Bottoner', 04041968, 58421871698050, 61277792148);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Ania Cheeld', 05271949, 91811081853221, 50854800524);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Jacinda Sargeant', 07271926, 43948666947055, 9702507946);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Kipp Epple', 07161964, 57412027921757, 40558190478);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Conant Hatley', 12291994, 67366840693929, 35315874411);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Idette Vallentin', 07251962, 77686328560250, 50493611763);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Connor Ivory', 12302014, 45462841573911, 43252941093);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Stevana Rodman', 11182019, 40656334743843, 36725080596);
INSERT INTO clientes (id_cliente, nome_Completo, data_Nascimento, cnpj, cpf) VALUES ('Kellie Aylott', 11141969, 5104493639694, 17441269794);

-- -----------------------------------------------------
-- Inserção na tabela `vendas`
-- -----------------------------------------------------
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (27092022, 8503418452, 82680227009705, 8159998674.37);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (03042023, 9742754691, 24568883057582, 764244939.85);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (11082022, 6599752993, 76452950016284, 272262174.82);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (02042023, 5130261011, 98363411531040, 3213125493.95);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (28052023, 4709128685, 83186021330051, 5482808083.24);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (17062022, 8315247514, 61045853799452, 5797926834.34);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (10032023, 5196450025, 40166273804472, 355085856.32);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (13082022, 3398167195, 16116503161752, 5413373978.15);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (10112022, 6691712560, 1323413885212, 8798686109.97);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (05062022, 7142025115, 95840728542690, 6655506880.27);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (26092022, 0848123603, 91658815664731, 4956400002.22);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (23122022, 0666976570, 9817016847843, 2312281434.8);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (01042023, 3431682707, 37092220765241, 3517187789.61);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (05092022, 6225905855, 17561860775952, 6243798008.05);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (02092022, 8967246315, 68904837517791, 9534734937.47);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (23042023, 9134291695, 89144143201580, 7969371286.72);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (25082022, 9140561534, 24119198727533, 9008908578.47);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (06022023, 8079447314, 78494478228590, 1294402072.52);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (30052022, 5078391037, 31921526487208, 6351031789.66);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (23102022, 0182052028, 28368586634887, 8068853115.82);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (26092022, 4099528731, 58929016400725, 4627051168.93);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (13012023, 1020220198, 49610907791725, 5711988075.55);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (14122022, 2310749125, 43034635162442, 3770189731.62);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (03092022, 1599194058, 13366979919959, 1629897965.17);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (25102022, 7678151756, 64545837242891, 7595088082.27);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (30032023, 8343012380, 73203598635029, 9277055738.3);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (09102022, 5726586565, 87274178494125, 5337484351.75);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (25012023, 3013759321, 78635864102755, 535763656.24);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (03042023, 0551065141, 26706593324870, 5208066119.15);
INSERT INTO vendas (id_vendas, data_venda, funcionario_matricula, clientes_id_cliente, valor_total) VALUES (28062022, 8658578097, 45917445060943, 9545492224.97);

-- -----------------------------------------------------
-- Inserção na tabela `compras`
-- -----------------------------------------------------
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (58415041953343, 54806524944779, 70, 1484667778317, 27052001);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (70786975411112, 59526398541733, 21, 49626798224043, 08011986);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (13072940984189, 70685098851839, 75, 25738416752463, 25031979);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (55704062019270, 89025783792831, 97, 46639324457635, 07111979);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (13349478920963, 20171495491977, 99, 37028244530380, 00091998);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (64576095128972, 46720142934651, 56, 62407669966959, 24121978);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (34557448879703, 76447243377627, 51, 18811700501211, 11051964);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (33182586897352, 79385631908707, 52, 82320400093082, 08091959);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (59493980023057, 61136477133093, 52, 37792381977843, 08061953);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (82083321913067, 89350417131030, 53, 87260707206999, 04032016);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (11379647670528, 58211999907932, 62, 37366307165576, 07051987);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (44675962816694, 23880280559043, 14, 82292302187746, 11051971);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (95759870228334, 34233692883056, 79, 32054586536063, 12122021);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (74381305834178, 32059950710114, 71, 96915046428203, 10041959);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (41997193761465, 77271042821853, 68, 37307592767081, 23052009);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (63756765087987, 30050983702585, 77, 95468196232288, 27081967);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (70960638022294, 81752419462964, 93, 74508030118631, 22121991);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (48573405898186, 39339096947470, 20, 42829799254130, 13111995);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (82853045936132, 74642185224041, 70, 57314467593545, 19121982);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (66213682877141, 60535499531100, 63, 6730543417450, 22091957);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (31244933016292, 43033533953154, 52, 92459335879680, 08091979);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (29445497277257, 21996003263362, 92, 51815950285434, 05021981);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (4123919502089, 67009105282257, 34, 6601274780695, 19121974);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (59969996420722, 43188729322560, 81, 93787275361720, 22092017);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (30103766219782, 93841364793794, 15, 51051134305448, 17052013);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (33492306317786, 3834119292331, 11, 49570758221600, 12061990);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (74723998387464, 24963725906623, 96, 30254658192872, 24022015);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (84057092116704, 43521078486401, 94, 42852102950553, 20091997);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (29533180795721, 63032493220775, 66, 33964699983894, 07091998);
INSERT INTO compras (karts_id_kart, vendas_id_vendas, quantidade, clientes_id_cliente, data_compra) VALUES (93943958416838, 77096094569864, 11, 80863929041076, 07041996);


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

  UPDATE fornceedor SET nome_mpresa= "Carros Red Bull" WHERE cnpj IN (96160704771023);
  UPDATE fornceedor SET nome_mpresa= "Car Ferrari" WHERE cnpj IN (51663115717740);
  UPDATE fornceedor SET nome_mpresa= "Kart Leclerc" WHERE cnpj IN (28324356754189);
  UPDATE fornceedor SET nome_mpresa= "Kart Obama" WHERE cnpj IN (85892187158679);
  UPDATE fornceedor SET nome_mpresa= "Kart Barack" WHERE cnpj IN (94817259501371);

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
  
  UPDATE funcionarios SET cargo= "Analista de Estoque" WHERE matricula IN (39259212899);
  UPDATE funcionarios SET cargo= "Supervisor" WHERE matricula IN (831641212700);
  UPDATE funcionarios SET cargo= "Grente" WHERE matricula IN (400646031526);
  UPDATE funcionarios SET cargo= "Vendedor" WHERE matricula IN (101963251547);
  UPDATE funcionarios SET cargo= "Caixa" WHERE matricula IN (158783648950);


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

   DELETE FROM fornecedor WHERE cnpj = 30;
   DELETE FROM fornecedor WHERE cnpj = 29;
   DELETE FROM fornecedor WHERE cnpj = 28;
   DELETE FROM fornecedor WHERE cnpj = 27;
   DELETE FROM fornecedor WHERE cnpj = 26;
 
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

   DELETE FROM funcionario WHERE matricula = 30;
   DELETE FROM funcionario WHERE matricula = 29;
   DELETE FROM funcionario WHERE matricula = 28;
   DELETE FROM funcionario WHERE matricula = 27;
   DELETE FROM funcionario WHERE matricula = 26;

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
   
-- -----------------------------------------------------
-- SELECT Das tabelas 
-- -----------------------------------------------------  

   SELECT count(*) FROM clientes;
   SELECT count(*) FROM funcionario;
   SELECT count(*) FROM fornecedor;
   SELECT count(*) FROM vendas;
   SELECT count(*) FROM compras;
   SELECT count(*) FROM karts;

   SELECT * FROM clientes ORDER BY id_cliente ASC; 
   SELECT * FROM funcionario ORDER BY matricula ASC;
   SELECT * FROM fornecedor ORDER BY cnpj ASC;
   SELECT * FROM vendas ORDER BY id_vendas ASC;
   SELECT * FROM compras ORDER BY id_compras ASC;
   SELECT * FROM karts ORDER BY id_karts ASC;
   
