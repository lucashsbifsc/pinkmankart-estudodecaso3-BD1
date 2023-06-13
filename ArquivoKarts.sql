DROP DATABASE IF EXISTS diagrama_karts;

CREATE DATABASE IF NOT EXISTS diagrama_karts;

USE diagrama_karts;

-- -----------------------------------------------------
-- Table `fornecedor`
-- -----------------------------------------------------
CREATE Table IF NOT EXISTS `fornecedor` (
  `cnpj` BIGINT(14) NOT NULL,
  `nome_empresa` VARCHAR(80) NOT NULL,
  `cep` INT(8) NOT NULL,
  `telefone` BIGINT(13) NOT NULL,
  PRIMARY KEY (`cnpj`) 
);

-- -----------------------------------------------------
-- Table `karts`
-- -----------------------------------------------------
CREATE Table IF NOT EXISTS `karts` (
  `id_kart` INT NOT NULL,
  `cor` VARCHAR(45) NOT NULL,
  `modelo` VARCHAR(45) NOT NULL,
  `marca` VARCHAR(45) NOT NULL,
  `ano` INT(4) NOT NULL,
  `quantidade` INT(3) NOT NULL,
  `data_entrada` DATE NOT NULL,
  `preco` FLOAT NOT NULL,
  `fornecedor_cnpj` BIGINT(14) NOT NULL,
  PRIMARY KEY AUTO_INCREMENT (`id_kart`),
  CONSTRAINT `fk_karts_fornecedor` FOREIGN KEY (`fornecedor_cnpj`) REFERENCES `fornecedor` (`cnpj`) ON DELETE CASCADE
);

-- -----------------------------------------------------
-- Table `funcionarios`
-- -----------------------------------------------------
CREATE Table IF NOT EXISTS `funcionarios` (
  `matricula` BIGINT(11) NOT NULL,
  `cpf` BIGINT(11) NOT NULL,
  `nome_completo` VARCHAR(80) NOT NULL,
  `data_nascimento` DATE NOT NULL,
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
  `data_nascimento` DATE NOT NULL,
  `cnpj` BIGINT(14) NULL,
  `cpf` BIGINT(11) NULL,
  PRIMARY KEY AUTO_INCREMENT (`id_cliente`)
);

-- -----------------------------------------------------primeiro_nome
-- Table `vendas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vendas` (
  `id_vendas` INT NOT NULL,
  `data_venda` DATE NOT NULL,
  `funcionarios_matricula` BIGINT(11) NOT NULL,
  `clientes_id_cliente` INT NOT NULL,
  `valor_total` FLOAT NOT NULL,
  `quantidade` INT(3) NOT NULL,
  `karts_id_kart` INT NOT NULL,
  PRIMARY KEY AUTO_INCREMENT (`id_vendas`),
  CONSTRAINT `fk_vendas_funcionarios1` FOREIGN KEY (`funcionarios_matricula`) REFERENCES `funcionarios` (`matricula`) ON DELETE CASCADE,
  CONSTRAINT `fk_vendas_clientes1` FOREIGN KEY (`clientes_id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE,
  CONSTRAINT `fk_vendas_karts1` FOREIGN KEY (`karts_id_kart`) REFERENCES `karts` (`id_kart`) ON DELETE CASCADE
);

-- -----------------------------------------------------
-- Inserção na tabela `fornecedor`
-- -----------------------------------------------------
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (29869831721988, 'Eamia', 78130162, 7970436363124);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (8300462011212, 'Talane', 2831427, 9096579915445);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (3702870385570, 'Yadel', 98175109, 2464787760405);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (11230289464353, 'Topiclounge', 46504305, 6268283103018);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (26353022685194, 'Dynazzy', 954165, 6499187016937);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (59468069060375, 'Omba', 96988623, 8641320180924);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (73861615582626, 'Plajo', 95647345, 8175473389471);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (44144510032997, 'Flashspan', 85921576, 5266706941378);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (65568688251934, 'Livepath', 3567263, 562643137826);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (31064314214704, 'Trupe', 87540227, 4926043678767);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (87846491576661, 'Zooxo', 2626274, 3918444667116);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (1390074224643, 'Blogspan', 47402402, 1548368809305);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (76364185067202, 'Vinder', 24737149, 6904487228489);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (5389859814397, 'Gabcube', 54679918, 4583629248761);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (17857960423514, 'Midel', 44461490, 6186111693339);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (82442415857043, 'Pixoboo', 57471581, 5549123402945);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (91065664026530, 'InnoZ', 55015246, 2672665506569);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (88995921254762, 'Cogibox', 99292225, 5734104441180);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (37175761500627, 'Divavu', 32097036, 1763270210372);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (61319714944611, 'Centimia', 34970790, 9049897248577);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (73787946938245, 'Gabtype', 87566078, 6576645192104);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (44695889295006, 'Quinu', 84623977, 2798852024280);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (37686936385560, 'Zoombox', 24659440, 7123979766004);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (12110038159867, 'Centimia', 43167574, 5871792751259);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (42827804103841, 'Cogidoo', 32799975, 6049114007523);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (35486174941922, 'Roodel', 36120896, 4454899041972);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (79743748237924, 'Skipstorm', 15356309, 8522248391360);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (96664118926678, 'Demivee', 37605703, 2018447414572);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (15752484471613, 'Yakitri', 73583143, 4187831381624);
INSERT INTO fornecedor (cnpj, nome_empresa, cep, telefone) VALUES (36437290843252, 'Wordtune', 68771969, 4841880709516);
-- -----------------------------------------------------
-- Inserção na tabela `karts`
-- -----------------------------------------------------
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (1, 'Turquoise', '530', 'BMW', 1946, 780, '2023-04-15', 3132112, 29869831721988);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (2, 'Puce', 'Regal', 'Buick', 2000, 228, '2023-02-12', 1305230, 8300462011212);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (3, 'Khaki', 'Fiesta', 'Ford', 1998, 76, '2023-06-05', 8988402, 3702870385570);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (4, 'Crimson', 'Talon', 'Eagle', 1985, 284, '2023-05-19', 1583653, 11230289464353);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (5, 'Crimson', 'Classic', 'Chevrolet', 2012, 381, '2023-02-15', 8833985, 26353022685194);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (6, 'Green', 'SX4', 'Suzuki', 1963, 934, '2023-03-14', 8897979, 59468069060375);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (7, 'Crimson', 'DBS', 'Aston Martin', 1959, 425, '2023-05-13', 2468871, 73861615582626);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (8, 'Goldenrod', 'Crosstour', 'Honda', 1970, 418, '2023-04-16', 3486663, 44144510032997);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (9, 'Blue', 'Silhouette', 'Oldsmobile', 1944, 2, '2023-01-21', 1862906, 65568688251934);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (10, 'Blue', 'Marauder', 'Mercury', 1907, 411, '2023-05-24', 6355843, 31064314214704);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (11, 'Khaki', 'Canyon', 'GMC', 1901, 105, '2023-01-17', 8321389, 87846491576661);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (12, 'Maroon', 'B-Series', 'Mazda', 1994, 618, '2023-03-11', 493274, 1390074224643);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (13, 'Maroon', 'Santa Fe', 'Hyundai', 1976, 429, '2023-03-31', 1654939, 76364185067202);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (14, 'Teal', 'Exige', 'Lotus', 1903, 236, '2023-03-03', 4145870, 5389859814397);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (15, 'Aquamarine', 'Sable', 'Mercury', 1958, 764, '2023-01-27', 3943888, 17857960423514);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (16, 'Mauv', 'Safari', 'GMC', 1966, 917, '2023-03-28', 2622550, 82442415857043);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (17, 'Turquoise', 'Ram 1500', 'Dodge', 1966, 848, '2023-04-20', 1283699, 91065664026530);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (18, 'Blue', 'Century', 'Buick', 1998, 388, '2023-06-10', 3089282, 88995921254762);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (19, 'Teal', 'Altima', 'Nissan', 1940, 582, '2023-06-04', 3720463, 37175761500627);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (20, 'Crimson', 'Elantra', 'Hyundai', 1925, 237, '2023-01-29', 1975852, 61319714944611);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (21, 'Red', 'Patriot', 'Jeep', 1996, 388, '2023-03-09', 4026475, 73787946938245);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (22, 'Violet', 'Odyssey', 'Honda', 2022, 677, '2023-03-05', 8989179, 44695889295006);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (23, 'Pink', 'Catera', 'Cadillac', 2009, 475, '2023-01-10', 3609846, 37686936385560);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (24, 'Red', 'A6', 'Audi', 1991, 547, '2023-03-08', 4870343, 12110038159867);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (25, 'Fuscia', 'MKX', 'Lincoln', 1947, 302, '2023-05-24', 1199770, 42827804103841);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (26, 'Teal', 'Savana 3500', 'GMC', 1937, 179, '2023-04-03', 287644, 35486174941922);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (27, 'Goldenrod', 'Sequoia', 'Toyota', 2003, 922, '2023-01-31', 9084300, 79743748237924);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (28, 'Mauv', 'MPV', 'Mazda', 2014, 485, '2023-05-13', 6599434, 96664118926678);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (29, 'Crimson', 'A3', 'Audi', 1931, 638, '2023-02-08', 3589449, 15752484471613);
INSERT INTO karts (id_kart, cor, modelo, marca, ano, quantidade, data_entrada, preco, fornecedor_cnpj) VALUES (30, 'Yellow', 'Corolla', 'Toyota', 1918, 223, '2023-03-26', 251040, 36437290843252);
-- -----------------------------------------------------
-- Inserção na tabela `funcionarios`
-- -----------------------------------------------------
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (82431679640, 12806829572, 'Shirlee Langeley', '1960-04-05', 'Environmental Tech', 'sA0+`?t.aJ+!3<.');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (15506231849, 91762561487, 'Magdaia Townes', '1979-02-16', 'Professor', 'bA3<9~MHH0e7Z1lu');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (84332839025, 25062329038, 'Carly Dales', '1998-10-12', 'Human Resources Assistant I', 'cR4",l}G)Z*u');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (86703160210, 54592123148, 'Engracia Kasting', '2014-08-15', 'Research Nurse', 'gI4''xlX<8Wfk1xR3');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (22126294064, 36450046891, 'Tobit Bompas', '1950-01-18', 'Chief Design Engineer', 'aD0|0|xNp8rIl0J');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (43891081600, 6078048526, 'Karlene Matijevic', '1974-07-22', 'Software Consultant', 'xJ3\6Vvy.g');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (26097921599, 76632152872, 'Juanita Caizley', '2013-08-01', 'Office Assistant II', 'kB3).Ko&');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (96429826849, 75658927846, 'Minni De Clairmont', '2006-02-20', 'Business Systems Development Analyst', 'jO9>Kgk9Mjy%Pdw');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (6373230712, 93230937031, 'Joelynn Hobbing', '2005-09-13', 'Registered Nurse', 'nI2%yCho%al<+j{');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (97978180182, 88732530898, 'Pryce Skittrell', '1970-03-07', 'Web Developer II', 'bT5,<al90_$T}&_');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (28838767414, 24686630055, 'Floria Bresland', '2006-11-28', 'Web Designer III', 'yX3}XWN4YHrw.oc');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (5230118088, 58778155426, 'Druci Darco', '1974-09-14', 'Financial Advisor', 'zY8/mE7@2<bp');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (13067646358, 82242693984, 'Claudina Treneman', '1979-04-14', 'Quality Engineer', 'uE5''_**S');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (39655805088, 72897857984, 'Harald Fuentes', '1962-11-03', 'Human Resources Assistant II', 'hR1~Dq*5%>h`}x');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (97501221834, 4070983078, 'Joni Paddington', '2001-08-14', 'Senior Editor', 'eQ2)0xHC*NpX=7');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (91307269603, 75255104749, 'Nance McLaughlin', '2002-09-12', 'Web Developer IV', 'kG1!f''hh~o+dqi&N');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (85819604539, 66568228383, 'Hollyanne Downgate', '1954-07-30', 'Assistant Media Planner', 'wC7>%Vdmf80(UN');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (37635633558, 66338231617, 'Wilone McGrath', '1968-05-06', 'Project Manager', 'gX2|g!Re}noErf');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (61429672143, 3255730242, 'Lauretta Starsmeare', '1964-01-21', 'Assistant Media Planner', 'rS2?_K=5P=''v');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (63722110026, 78685795556, 'Rozalie Thunnercliffe', '2010-11-10', 'Environmental Tech', 'tR7&|f,`Cby/Ewu');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (83559425059, 20635303721, 'Nita Hulance', '1974-10-13', 'VP Product Management', 'iX2`KWk%');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (26228537312, 7212592034, 'Idalina Garwood', '1959-06-02', 'VP Product Management', 'gP5`2\b1@O&A');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (70841881573, 2277428783, 'Patrizius Hoovart', '1952-07-16', 'Director of Sales', 'tS0\sC,\og');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (23872314753, 93500148713, 'Arnuad Scriviner', '2020-05-12', 'Paralegal', 'iY2.,MiQJ?p5Eq');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (12384525692, 56026847438, 'Hewett Jeffry', '1954-12-15', 'Associate Professor', 'oH8''#$@w4!');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (32966856247, 40449723509, 'Romona Dodell', '1983-02-05', 'Senior Cost Accountant', 'nU8{HHh{|/}P');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (22554399592, 42772985961, 'Zollie Tewkesberry', '1994-07-08', 'Engineer II', 'tD4@''W,hq5Z$D');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (76251366973, 62500546841, 'Zared Iley', '2022-07-03', 'Nuclear Power Engineer', 'cW2)01=o\{d"TV*H');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (91578389041, 97693462016, 'Cari Farlham', '1999-01-29', 'Developer IV', 'yC9&sj4\Z15TV');
INSERT INTO funcionarios (matricula, cpf, nome_completo, data_nascimento, cargo, senha) VALUES (36943744159, 15847860513, 'Carmel Kaemena', '1954-12-16', 'Recruiting Manager', 'qE8#{LCL76m!');

-- -----------------------------------------------------
-- Inserção na tabela `clientes`
-- -----------------------------------------------------
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (1, 'Simone Lilleyman', '1957-09-09', null, 86923874376);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (2, 'Eberto Pepall', '2010-01-09', 73676698470860, null);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (3, 'Carita Boundley', '2014-01-10', null, 52786640290);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (4, 'Floyd Buist', '2012-05-22', 55077260442904, null);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (5, 'Duffie Erbe', '2014-07-06', null, 14791643334);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (6, 'Michele De Beauchemp', '2012-10-24', 98998747878872, null);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (7, 'Jeffrey Gamage', '1963-09-12', null, 38753622595);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (8, 'Cherise Fishbourn', '2012-05-01', null, 75711111374);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (9, 'Faythe Rubinowitch', '1996-02-28', 12577490716969, null);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (10, 'Karolina Alton', '1960-10-10', null, 43184560021);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (11, 'Renata Marvell', '1979-02-18', 10007633954824, null);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (12, 'Maighdiln Geary', '2019-04-30', 31937753809075, null);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (13, 'Torrence Morilla', '1952-05-20', 62026117701587, null);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (14, 'Xaviera Fenimore', '1991-06-25', 82993273095919, null);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (15, 'Larine Kither', '1955-08-31', null, 48309109807);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (16, 'Sharai Wykey', '2021-02-25', 13698889161923, null);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (17, 'Aidan Dispencer', '1977-08-29', 63368165132812, null);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (18, 'Chery Keyden', '1959-09-07', null, 15238808735);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (19, 'Tova Askell', '2020-12-18', 61753769427501, null);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (20, 'Mikol Tomasz', '1999-05-22', 66051844655526, null);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (21, 'Inger Leil', '1960-08-04', null, 82347107734);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (22, 'Kellina Hobell', '2007-12-20', 44954122966606, null);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (23, 'Lenore Soames', '1998-01-18', 21616571650056, null);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (24, 'Corinna O''Fearguise', '2004-06-01', null, 67533611255);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (25, 'Bil Crosbie', '1978-05-07', null, 62731561064);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (26, 'Elsinore Sanday', '2021-01-21', 2518725467911, null);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (27, 'Lyndell Cooke', '1968-10-06', null, 43122761676);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (28, 'Abran Sundin', '1997-04-02', 15610258860, null);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (29, 'Mead St. John', '2010-11-15', 95778186110, null);
INSERT INTO clientes (id_cliente, nome_completo, data_nascimento, cnpj, cpf) VALUES (30, 'Clay Pennetti', '2017-07-13', null, 71442448911);


-- -----------------------------------------------------
-- Inserção na tabela `vendas`
-- -----------------------------------------------------
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (1, '2023-04-14', 82431679640, 1, 5738565.87, 648, 1);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (2, '2023-01-30', 15506231849, 2, 4756586.3, 880, 2);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (3, '2023-01-20', 84332839025, 3, 1675808.18, 69, 3);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (4, '2023-01-06', 86703160210, 4, 5380043.95, 759, 4);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (5, '2023-05-29', 22126294064, 5, 5352250.44, 392, 5);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (6, '2023-03-09', 43891081600, 6, 7511593.31, 419, 6);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (7, '2023-04-30', 26097921599, 7, 5431299.1, 992, 7);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (8, '2023-02-24', 96429826849, 8, 3409219.13, 787, 8);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (9, '2023-02-15', 6373230712, 9, 3021547.93, 867, 9);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (10, '2023-05-19', 97978180182, 10, 1420593.09, 510, 10);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (11, '2023-02-04', 28838767414, 11, 2075496.26, 319, 11);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (12, '2023-03-25', 5230118088, 12, 4877492.81, 679, 12);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (13, '2023-01-22', 13067646358, 13, 8681476.92, 406, 13);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (14, '2023-04-09', 39655805088, 14, 1532599.19, 969, 14);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (15, '2023-01-29', 97501221834, 15, 9355675.13, 827, 15);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (16, '2023-01-18', 91307269603, 16, 9754695.91, 369, 16);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (17, '2023-02-18', 85819604539, 17, 7326373.48, 787, 17);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (18, '2023-03-10', 37635633558, 18, 2319206.63, 574, 18);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (19, '2023-01-11', 61429672143, 19, 5552774.85, 702, 19);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (20, '2023-02-15', 63722110026, 20, 1623992.26, 110, 20);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (21, '2023-05-28', 83559425059, 21, 6879498.57, 879, 21);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (22, '2023-06-04', 26228537312, 22, 92853.01, 572, 22);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (23, '2023-01-25', 70841881573, 23, 6007408.91, 896, 23);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (24, '2023-04-21', 23872314753, 24, 4565374.34, 842, 24);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (25, '2023-04-03', 12384525692, 25, 4199577.65, 173, 25);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (26, '2023-05-15', 32966856247, 26, 6635571.11, 511, 26);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (27, '2023-05-01', 22554399592, 27, 9002490.81, 910, 27);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (28, '2023-05-26', 76251366973, 28, 8685104.15, 555, 28);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (29, '2023-06-05', 91578389041, 29, 8208494.78, 312, 29);
INSERT INTO vendas (id_vendas, data_venda, funcionarios_matricula, clientes_id_cliente, valor_total, quantidade, karts_id_kart) VALUES (30, '2023-01-07', 36943744159, 30, 1885928.92, 506, 30);


-- UPDATE
    
--------------------------------------------------------
-- Atualização na tabela `clientes` chave primária id_cliente
-- -----------------------------------------------------

UPDATE clientes SET nome_completo = "Amanda Alves de Lima" WHERE id_cliente IN (20);
UPDATE clientes SET nome_completo = "Gabriele Ribeiro" WHERE id_cliente IN (21);
UPDATE clientes SET nome_completo = "Pietro Hofferman" WHERE id_cliente IN (22); 
UPDATE clientes SET nome_completo = "Lucas Lemes" WHERE id_cliente IN (23); 
UPDATE clientes SET nome_completo = "Guilherme Almeida" WHERE id_cliente IN (24); 
UPDATE clientes SET nome_completo = "Lucas Oliveira" WHERE id_cliente IN (25); 
  
----------------------------------------------------------
-- Atualização na tabela `fornecedor` chave primária cnpj
----------------------------------------------------------

UPDATE fornecedor SET nome_empresa = "Carros Red Bull" WHERE cnpj IN (96160704771023);
UPDATE fornecedor SET nome_empresa = "Car Ferrari" WHERE cnpj IN (51663115717740);
UPDATE fornecedor SET nome_empresa = "Kart Leclerc" WHERE cnpj IN (28324356754189);
UPDATE fornecedor SET nome_empresa = "Kart Obama" WHERE cnpj IN (85892187158679);
UPDATE fornecedor SET nome_empresa = "Kart Barack" WHERE cnpj IN (94817259501371);

----------------------------------------------------------
-- Atualização na tabela `karts` chave primária id_kart
----------------------------------------------------------
  
UPDATE karts SET cor = "Amarelo" WHERE id_kart IN (20);
UPDATE karts SET cor = "Verde" WHERE id_kart IN (21);
UPDATE karts SET cor = "Azul" WHERE id_kart IN (22);
UPDATE karts SET cor = "Preto" WHERE id_kart IN (23);
UPDATE karts SET cor = "Branco" WHERE id_kart IN (24);
UPDATE karts SET cor = "Roxo" WHERE id_kart IN (25);

-------------------------------------------------------------
-- Atualização na tabela `vendas` chave primária id_vendas
-------------------------------------------------------------

UPDATE vendas SET data_venda = '2023-11-08' WHERE id_vendas IN (20);
UPDATE vendas SET data_venda = '2023-11-11' WHERE id_vendas IN (21);
UPDATE vendas SET data_venda = '2023-11-21' WHERE id_vendas IN (22);
UPDATE vendas SET data_venda = '2023-11-09' WHERE id_vendas IN (23);
UPDATE vendas SET data_venda = '2023-09-11' WHERE id_vendas IN (24);
UPDATE vendas SET data_venda = '2023-01-11' WHERE id_vendas IN (25);

----------------------------------------------------------------
-- Atualização na tabela `funcionarios` chave primária matricula
----------------------------------------------------------------
  
UPDATE funcionarios SET cargo = "Analista de Estoque" WHERE matricula IN (39259212899);
UPDATE funcionarios SET cargo = "Supervisor" WHERE matricula IN (831641212700);
UPDATE funcionarios SET cargo = "Grente" WHERE matricula IN (400646031526);
UPDATE funcionarios SET cargo = "Vendedor" WHERE matricula IN (101963251547);
UPDATE funcionarios SET cargo = "Caixa" WHERE matricula IN (158783648950);


-- DELETE

-- -----------------------------------------------------
-- DELETE na tabela `Cliente` e `Vendas`
-- -----------------------------------------------------

DELETE FROM vendas WHERE clientes_id_cliente = 30;
DELETE FROM vendas WHERE clientes_id_cliente = 29;
DELETE FROM vendas WHERE clientes_id_cliente = 28;
DELETE FROM vendas WHERE clientes_id_cliente = 27;
DELETE FROM vendas WHERE clientes_id_cliente = 26;

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
 
DELETE FROM karts WHERE id_kart = 30;
DELETE FROM karts WHERE id_kart = 29;
DELETE FROM karts WHERE id_kart = 28;
DELETE FROM karts WHERE id_kart = 27;
DELETE FROM karts WHERE id_kart = 26;

-- -----------------------------------------------------
-- DELETE na tabela `funcionarios`
-- -----------------------------------------------------

DELETE FROM funcionarios WHERE matricula = 30;
DELETE FROM funcionarios WHERE matricula = 29;
DELETE FROM funcionarios WHERE matricula = 28;
DELETE FROM funcionarios WHERE matricula = 27;
DELETE FROM funcionarios WHERE matricula = 26;

-- -----------------------------------------------------
-- DELETE na tabela `vendas`
-- -----------------------------------------------------   

DELETE FROM vendas WHERE id_vendas = 30;
DELETE FROM vendas WHERE id_vendas = 29;
DELETE FROM vendas WHERE id_vendas = 28;
DELETE FROM vendas WHERE id_vendas = 27;
DELETE FROM vendas WHERE id_vendas = 26;
   
-- -----------------------------------------------------
-- SELECT das tabelas 
-- -----------------------------------------------------  

-- Select Count:

SELECT COUNT(*) FROM clientes;
SELECT COUNT(*) FROM funcionarios;
SELECT COUNT(*) FROM fornecedor;
SELECT COUNT(*) FROM vendas;
SELECT COUNT(*) FROM karts;

-- Select All:

SELECT * FROM clientes ORDER BY id_cliente ASC; 
SELECT * FROM funcionarios ORDER BY matricula ASC;
SELECT * FROM fornecedor ORDER BY cnpj ASC;
SELECT * FROM vendas ORDER BY id_vendas ASC;
SELECT * FROM karts ORDER BY id_kart ASC;

-- Select Join:

SELECT fornecedor.cnpj, karts.fornecedor_cnpj
FROM fornecedor
INNER JOIN karts
ON 
fornecedor.cnpj = karts.fornecedor_cnpj; 

SELECT fornecedor.cnpj, karts.fornecedor_cnpj
FROM fornecedor
LEFT JOIN karts
ON 
fornecedor.cnpj = karts.fornecedor_cnpj; 

SELECT fornecedor.cnpj, karts.fornecedor_cnpj
FROM fornecedor
RIGHT JOIN karts
ON 
fornecedor.cnpj = karts.fornecedor_cnpj; 