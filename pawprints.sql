-- Database export via SQLPro (https://www.sqlprostudio.com/allapps.html)
-- Exported by andycaicedo at 23-05-2020 11:51.
-- WARNING: This file may contain descructive statements such as DROPs.
-- Please ensure that you are running the script at the proper location.


-- BEGIN TABLE category
DROP TABLE IF EXISTS category;
CREATE TABLE `category` (
  `id_category` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(30) NOT NULL,
  `state_category` varchar(8) NOT NULL DEFAULT 'activo',
  `category_type` int NOT NULL,
  `register_date` date DEFAULT NULL,
  `test` int NOT NULL,
  `NewColumn1` int NOT NULL,
  `NewColumn2` int NOT NULL,
  PRIMARY KEY (`id_category`),
  UNIQUE KEY `name_type_uidx` (`category_name`,`category_type`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- Table category contains no data. No inserts have been genrated.
-- Inserting 0 rows into category


-- END TABLE category

-- BEGIN TABLE configurationitem
DROP TABLE IF EXISTS configurationitem;
CREATE TABLE `configurationitem` (
  `idpawPrint` int NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `item` varchar(30) NOT NULL,
  `password` varchar(500) DEFAULT NULL,
  `idpaw` int NOT NULL,
  PRIMARY KEY (`idpawPrint`),
  KEY `idpaw` (`idpaw`),
  CONSTRAINT `configurationitem_ibfk_1` FOREIGN KEY (`idpaw`) REFERENCES `pawprint` (`idpawprnt`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

-- Inserting 52 rows into configurationitem
-- Insert batch #1
INSERT INTO configurationitem (idpawPrint, type, item, password, idpaw) VALUES
(1, 'Tabla/Vista', 'category', '5fba51dc3af01d271d1acb64dd7df35ea38095bf692470eab2ee1a48713e9602', 2),
(2, 'Tabla/Vista', 'configurationitem', '852b0aa06f66750f2b898dfe9b6c4cf266b173f7351d7750a2d416d39b09e8aa', 2),
(3, 'Tabla/Vista', 'pawprint', 'ffa22725a86bcf6783150b11f6a9310e70390b7488f3015a514c7075b21f5669', 2),
(4, 'Tabla/Vista', 'pawprint_temp', '2b544ff85805abeecda21c149fb140c9dd637e9e9a03243da7b7f8f674f6eb64', 2),
(5, 'Tabla/Vista', 'sig_materials', 'd1a02aa8cd8b4736d8a75cbbdc104d5f4c985bd5f384681dd2ca3eb1538020e8', 2),
(6, 'Tabla/Vista', 'sig_temp', 'fd5bbbc46a5d8f01d5d67372b078e3934930a89a02b6ab7ec78d48088117967f', 2),
(7, 'Tabla/Vista', 'sig_tool', '9f399cd7028627520eecb020261e4590499dc8723b0cf824b0c9388a77d98fe5', 2),
(8, 'Tabla/Vista', 'sig_workforces', '04d5686edccd959a06ed4f7e542a8455cfe8c14e75fab1e7cf3df31fbde42b10', 2),
(9, 'Procedure/Function', 'generatedPawPrint', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 2),
(10, 'Procedure/Function', 'generatedPawPrintF', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 2),
(11, 'Procedure/Function', 'loadCategory', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 2),
(12, 'Procedure/Function', 'loadDataInfile', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 2),
(13, 'Procedure/Function', 'loadDataInfile1', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 2),
(14, 'Procedure/Function', 'loadDataInfile2', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 2),
(15, 'Procedure/Function', 'loadDataInfile3', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 2),
(16, 'Procedure/Function', 'sha256TableF', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 2),
(17, 'Procedure/Function', 'validatepawPrint', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 2),
(18, 'Tabla/Vista', 'category', '5fba51dc3af01d271d1acb64dd7df35ea38095bf692470eab2ee1a48713e9602', 3),
(19, 'Tabla/Vista', 'configurationitem', '852b0aa06f66750f2b898dfe9b6c4cf266b173f7351d7750a2d416d39b09e8aa', 3),
(20, 'Tabla/Vista', 'pawprint', 'ffa22725a86bcf6783150b11f6a9310e70390b7488f3015a514c7075b21f5669', 3),
(21, 'Tabla/Vista', 'pawprint_temp', '2b544ff85805abeecda21c149fb140c9dd637e9e9a03243da7b7f8f674f6eb64', 3),
(22, 'Tabla/Vista', 'sig_materials', 'd1a02aa8cd8b4736d8a75cbbdc104d5f4c985bd5f384681dd2ca3eb1538020e8', 3),
(23, 'Tabla/Vista', 'sig_temp', 'fd5bbbc46a5d8f01d5d67372b078e3934930a89a02b6ab7ec78d48088117967f', 3),
(24, 'Tabla/Vista', 'sig_tool', '9f399cd7028627520eecb020261e4590499dc8723b0cf824b0c9388a77d98fe5', 3),
(25, 'Tabla/Vista', 'sig_workforces', '04d5686edccd959a06ed4f7e542a8455cfe8c14e75fab1e7cf3df31fbde42b10', 3),
(26, 'Procedure/Function', 'generatedPawPrint', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 3),
(27, 'Procedure/Function', 'generatedPawPrintF', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 3),
(28, 'Procedure/Function', 'loadCategory', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 3),
(29, 'Procedure/Function', 'loadDataInfile', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 3),
(30, 'Procedure/Function', 'loadDataInfile1', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 3),
(31, 'Procedure/Function', 'loadDataInfile2', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 3),
(32, 'Procedure/Function', 'loadDataInfile3', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 3),
(33, 'Procedure/Function', 'sha256TableF', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 3),
(34, 'Procedure/Function', 'validatepawPrint', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 3),
(35, 'Tabla/Vista', 'category', '5fba51dc3af01d271d1acb64dd7df35ea38095bf692470eab2ee1a48713e9623', 4),
(36, 'Tabla/Vista', 'configurationitem', '852b0aa06f66750f2b898dfe9b6c4cf266b173f7351d7750a2d416d39b09e8aa', 4),
(37, 'Tabla/Vista', 'pawprint', 'ffa22725a86bcf6783150b11f6a9310e70390b7488f3015a514c7075b21f5669', 4),
(38, 'Tabla/Vista', 'pawprint_temp', '2b544ff85805abeecda21c149fb140c9dd637e9e9a03243da7b7f8f674f6eb64', 4),
(39, 'Tabla/Vista', 'sig_materials', 'd1a02aa8cd8b4736d8a75cbbdc104d5f4c985bd5f384681dd2ca3eb1538020e8', 4),
(40, 'Tabla/Vista', 'sig_temp', 'fd5bbbc46a5d8f01d5d67372b078e3934930a89a02b6ab7ec78d48088117967f', 4),
(41, 'Tabla/Vista', 'sig_tool', '9f399cd7028627520eecb020261e4590499dc8723b0cf824b0c9388a77d98f36', 4),
(42, 'Tabla/Vista', 'sig_workforces', '04d5686edccd959a06ed4f7e542a8455cfe8c14e75fab1e7cf3df31fbde42b10', 4),
(43, 'Procedure/Function', 'detalleHuella', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 4),
(44, 'Procedure/Function', 'generatedPawPrint', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 4),
(45, 'Procedure/Function', 'generatedPawPrintF', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 4),
(46, 'Procedure/Function', 'loadCategory', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 4),
(47, 'Procedure/Function', 'loadDataInfile', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 4),
(48, 'Procedure/Function', 'loadDataInfile1', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 4),
(49, 'Procedure/Function', 'loadDataInfile2', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 4),
(50, 'Procedure/Function', 'loadDataInfile3', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 4),
(51, 'Procedure/Function', 'sha256TableF', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 4),
(52, 'Procedure/Function', 'validatepawPrint', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 4);

-- END TABLE configurationitem

-- BEGIN TABLE pawprint
DROP TABLE IF EXISTS pawprint;
CREATE TABLE `pawprint` (
  `idpawprnt` int NOT NULL AUTO_INCREMENT,
  `namepawprint` varchar(30) NOT NULL,
  `version` varchar(5) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`idpawprnt`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Inserting 3 rows into pawprint
-- Insert batch #1
INSERT INTO pawprint (idpawprnt, namepawprint, version, fecha) VALUES
(2, 'Huella 1', '1.0', '2020-05-23'),
(3, 'Huella 2', '1.2', '2020-05-23'),
(4, 'huella 3', '1.4', '2020-05-23');

-- END TABLE pawprint

-- BEGIN TABLE pawprint_temp
DROP TABLE IF EXISTS pawprint_temp;
CREATE TABLE `pawprint_temp` (
  `idpawPrintTemp` int NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `item` varchar(30) NOT NULL,
  `password` varchar(500) NOT NULL,
  `password2` varchar(500) NOT NULL,
  `idpaw` int NOT NULL,
  PRIMARY KEY (`idpawPrintTemp`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

-- Inserting 52 rows into pawprint_temp
-- Insert batch #1
INSERT INTO pawprint_temp (idpawPrintTemp, type, item, password, password2, idpaw) VALUES
(1, 'Tabla/Vista', 'category', '5fba51dc3af01d271d1acb64dd7df35ea38095bf692470eab2ee1a48713e9602', '5fba51dc3af01d271d1acb64dd7df35ea38095bf692470eab2ee1a48713e9602', 3),
(2, 'Tabla/Vista', 'configurationitem', '852b0aa06f66750f2b898dfe9b6c4cf266b173f7351d7750a2d416d39b09e8aa', '852b0aa06f66750f2b898dfe9b6c4cf266b173f7351d7750a2d416d39b09e8aa', 3),
(3, 'Tabla/Vista', 'pawprint', 'ffa22725a86bcf6783150b11f6a9310e70390b7488f3015a514c7075b21f5669', 'ffa22725a86bcf6783150b11f6a9310e70390b7488f3015a514c7075b21f5669', 3),
(4, 'Tabla/Vista', 'pawprint_temp', '2b544ff85805abeecda21c149fb140c9dd637e9e9a03243da7b7f8f674f6eb64', '2b544ff85805abeecda21c149fb140c9dd637e9e9a03243da7b7f8f674f6eb64', 3),
(5, 'Tabla/Vista', 'sig_materials', 'd1a02aa8cd8b4736d8a75cbbdc104d5f4c985bd5f384681dd2ca3eb1538020e8', 'd1a02aa8cd8b4736d8a75cbbdc104d5f4c985bd5f384681dd2ca3eb1538020e8', 3),
(6, 'Tabla/Vista', 'sig_temp', 'fd5bbbc46a5d8f01d5d67372b078e3934930a89a02b6ab7ec78d48088117967f', 'fd5bbbc46a5d8f01d5d67372b078e3934930a89a02b6ab7ec78d48088117967f', 3),
(7, 'Tabla/Vista', 'sig_tool', '9f399cd7028627520eecb020261e4590499dc8723b0cf824b0c9388a77d98fe5', '9f399cd7028627520eecb020261e4590499dc8723b0cf824b0c9388a77d98fe5', 3),
(8, 'Tabla/Vista', 'sig_workforces', '04d5686edccd959a06ed4f7e542a8455cfe8c14e75fab1e7cf3df31fbde42b10', '04d5686edccd959a06ed4f7e542a8455cfe8c14e75fab1e7cf3df31fbde42b10', 3),
(9, 'Procedure/Function', 'generatedPawPrint', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 3),
(10, 'Procedure/Function', 'generatedPawPrintF', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 3),
(11, 'Procedure/Function', 'loadCategory', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 3),
(12, 'Procedure/Function', 'loadDataInfile', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 3),
(13, 'Procedure/Function', 'loadDataInfile1', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 3),
(14, 'Procedure/Function', 'loadDataInfile2', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 3),
(15, 'Procedure/Function', 'loadDataInfile3', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 3),
(16, 'Procedure/Function', 'sha256TableF', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 3),
(17, 'Procedure/Function', 'validatepawPrint', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 3),
(18, 'Tabla/Vista', 'category', '5fba51dc3af01d271d1acb64dd7df35ea38095bf692470eab2ee1a48713e9602', '5fba51dc3af01d271d1acb64dd7df35ea38095bf692470eab2ee1a48713e9602', 2),
(19, 'Tabla/Vista', 'configurationitem', '852b0aa06f66750f2b898dfe9b6c4cf266b173f7351d7750a2d416d39b09e8aa', '852b0aa06f66750f2b898dfe9b6c4cf266b173f7351d7750a2d416d39b09e8aa', 2),
(20, 'Tabla/Vista', 'pawprint', 'ffa22725a86bcf6783150b11f6a9310e70390b7488f3015a514c7075b21f5669', 'ffa22725a86bcf6783150b11f6a9310e70390b7488f3015a514c7075b21f5669', 2),
(21, 'Tabla/Vista', 'pawprint_temp', '2b544ff85805abeecda21c149fb140c9dd637e9e9a03243da7b7f8f674f6eb64', '2b544ff85805abeecda21c149fb140c9dd637e9e9a03243da7b7f8f674f6eb64', 2),
(22, 'Tabla/Vista', 'sig_materials', 'd1a02aa8cd8b4736d8a75cbbdc104d5f4c985bd5f384681dd2ca3eb1538020e8', 'd1a02aa8cd8b4736d8a75cbbdc104d5f4c985bd5f384681dd2ca3eb1538020e8', 2),
(23, 'Tabla/Vista', 'sig_temp', 'fd5bbbc46a5d8f01d5d67372b078e3934930a89a02b6ab7ec78d48088117967f', 'fd5bbbc46a5d8f01d5d67372b078e3934930a89a02b6ab7ec78d48088117967f', 2),
(24, 'Tabla/Vista', 'sig_tool', '9f399cd7028627520eecb020261e4590499dc8723b0cf824b0c9388a77d98fe5', '9f399cd7028627520eecb020261e4590499dc8723b0cf824b0c9388a77d98fe5', 2),
(25, 'Tabla/Vista', 'sig_workforces', '04d5686edccd959a06ed4f7e542a8455cfe8c14e75fab1e7cf3df31fbde42b10', '04d5686edccd959a06ed4f7e542a8455cfe8c14e75fab1e7cf3df31fbde42b10', 2),
(26, 'Procedure/Function', 'generatedPawPrint', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 2),
(27, 'Procedure/Function', 'generatedPawPrintF', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 2),
(28, 'Procedure/Function', 'loadCategory', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 2),
(29, 'Procedure/Function', 'loadDataInfile', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 2),
(30, 'Procedure/Function', 'loadDataInfile1', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 2),
(31, 'Procedure/Function', 'loadDataInfile2', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 2),
(32, 'Procedure/Function', 'loadDataInfile3', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 2),
(33, 'Procedure/Function', 'sha256TableF', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 2),
(34, 'Procedure/Function', 'validatepawPrint', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 2),
(35, 'Tabla/Vista', 'category', '5fba51dc3af01d271d1acb64dd7df35ea38095bf692470eab2ee1a48713e9602', '5fba51dc3af01d271d1acb64dd7df35ea38095bf692470eab2ee1a48713e9602', 4),
(36, 'Tabla/Vista', 'configurationitem', '852b0aa06f66750f2b898dfe9b6c4cf266b173f7351d7750a2d416d39b09e8aa', '852b0aa06f66750f2b898dfe9b6c4cf266b173f7351d7750a2d416d39b09e8aa', 4),
(37, 'Tabla/Vista', 'pawprint', 'ffa22725a86bcf6783150b11f6a9310e70390b7488f3015a514c7075b21f5669', 'ffa22725a86bcf6783150b11f6a9310e70390b7488f3015a514c7075b21f5669', 4),
(38, 'Tabla/Vista', 'pawprint_temp', '2b544ff85805abeecda21c149fb140c9dd637e9e9a03243da7b7f8f674f6eb64', '2b544ff85805abeecda21c149fb140c9dd637e9e9a03243da7b7f8f674f6eb64', 4),
(39, 'Tabla/Vista', 'sig_materials', 'd1a02aa8cd8b4736d8a75cbbdc104d5f4c985bd5f384681dd2ca3eb1538020e8', 'd1a02aa8cd8b4736d8a75cbbdc104d5f4c985bd5f384681dd2ca3eb1538020e8', 4),
(40, 'Tabla/Vista', 'sig_temp', 'fd5bbbc46a5d8f01d5d67372b078e3934930a89a02b6ab7ec78d48088117967f', 'fd5bbbc46a5d8f01d5d67372b078e3934930a89a02b6ab7ec78d48088117967f', 4),
(41, 'Tabla/Vista', 'sig_tool', '9f399cd7028627520eecb020261e4590499dc8723b0cf824b0c9388a77d98fe5', '9f399cd7028627520eecb020261e4590499dc8723b0cf824b0c9388a77d98fe5', 4),
(42, 'Tabla/Vista', 'sig_workforces', '04d5686edccd959a06ed4f7e542a8455cfe8c14e75fab1e7cf3df31fbde42b10', '04d5686edccd959a06ed4f7e542a8455cfe8c14e75fab1e7cf3df31fbde42b10', 4),
(43, 'Procedure/Function', 'detalleHuella', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 4),
(44, 'Procedure/Function', 'generatedPawPrint', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 4),
(45, 'Procedure/Function', 'generatedPawPrintF', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 4),
(46, 'Procedure/Function', 'loadCategory', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 4),
(47, 'Procedure/Function', 'loadDataInfile', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 4),
(48, 'Procedure/Function', 'loadDataInfile1', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 4),
(49, 'Procedure/Function', 'loadDataInfile2', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 4),
(50, 'Procedure/Function', 'loadDataInfile3', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 4),
(51, 'Procedure/Function', 'sha256TableF', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 4),
(52, 'Procedure/Function', 'validatepawPrint', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', 4);

-- END TABLE pawprint_temp

-- BEGIN TABLE sig_materials
DROP TABLE IF EXISTS sig_materials;
CREATE TABLE `sig_materials` (
  `idmaterial` int NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `unit` varchar(5) NOT NULL,
  `price` int NOT NULL,
  `idcategory` int NOT NULL,
  `state` varchar(8) NOT NULL DEFAULT 'activo',
  `fecha` date DEFAULT NULL,
  `NewColumn1` int NOT NULL,
  `test` int NOT NULL,
  `test2` varchar(10) NOT NULL,
  `test3` varchar(10) NOT NULL,
  PRIMARY KEY (`idmaterial`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `name` (`name`),
  KEY `foreing_key_category_materials` (`idcategory`),
  CONSTRAINT `foreing_key_category_materials` FOREIGN KEY (`idcategory`) REFERENCES `category` (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=540 DEFAULT CHARSET=latin1;

-- Table sig_materials contains no data. No inserts have been genrated.
-- Inserting 0 rows into sig_materials


-- END TABLE sig_materials

-- BEGIN TABLE sig_temp
DROP TABLE IF EXISTS sig_temp;
CREATE TABLE `sig_temp` (
  `id_temporal` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) DEFAULT NULL,
  `clasif` varchar(30) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `und` varchar(5) DEFAULT NULL,
  `vr_unit` int DEFAULT NULL,
  `NewColumn1` int NOT NULL,
  PRIMARY KEY (`id_temporal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table sig_temp contains no data. No inserts have been genrated.
-- Inserting 0 rows into sig_temp


-- END TABLE sig_temp

-- BEGIN TABLE sig_tool
DROP TABLE IF EXISTS sig_tool;
CREATE TABLE `sig_tool` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` int NOT NULL,
  `name` varchar(500) NOT NULL,
  `unit` varchar(5) NOT NULL,
  `price` int NOT NULL,
  `idCategory` int NOT NULL,
  `temp` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=577 DEFAULT CHARSET=latin1;

-- Table sig_tool contains no data. No inserts have been genrated.
-- Inserting 0 rows into sig_tool


-- END TABLE sig_tool

-- BEGIN TABLE sig_workforces
DROP TABLE IF EXISTS sig_workforces;
CREATE TABLE `sig_workforces` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` int NOT NULL,
  `name` varchar(500) NOT NULL,
  `unit` varchar(5) NOT NULL,
  `price` int NOT NULL,
  `idCategory` int NOT NULL,
  `fecha` date DEFAULT NULL,
  `temp` varchar(50) DEFAULT NULL,
  `temp2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table sig_workforces contains no data. No inserts have been genrated.
-- Inserting 0 rows into sig_workforces


-- END TABLE sig_workforces

DROP FUNCTION IF EXISTS sha256TableF;

DELIMITER $$
CREATE FUNCTION `sha256TableF`(t_name varchar(64)) RETURNS varchar(500) CHARSET latin1
    DETERMINISTIC
BEGIN

    declare StringSHA256 varchar(64);
    declare name varchar(64);
    declare position bigint(21) unsigned;
    declare columdef longtext;
    declare isnullb varchar(3);
    declare datatype varchar(64);
    declare charmax bigint(21) unsigned;
    declare numpre bigint(21) unsigned;
    declare numscal bigint(21) unsigned;
    declare done boolean DEFAULT false;
     
        DECLARE result CURSOR FOR SELECT table_name,ordinal_position,column_default,is_nullable,data_type,character_maximum_length,numeric_precision,numeric_scale  FROM information_schema.COLUMNS WHERE table_schema = 'pawprints' AND table_name = t_name;

DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = true;
        set StringSHA256 = '';

        OPEN result;
        get_record: LOOP
         FETCH result INTO name,position,columdef,isnullb,datatype,charmax,numpre,numscal ;
            IF done = true THEN
                LEAVE get_record;
            END IF;
               set StringSHA256=CONCAT_WS("",name,position,columdef,isnullb,datatype,charmax,numpre,numscal);
        END LOOP get_record;
        
        CLOSE result;     
        RETURN SHA2(StringSHA256, 256);
END$$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS actualizarMateriales $$
CREATE PROCEDURE `actualizarMateriales`()
begin
DECLARE v_finished INTEGER DEFAULT 0;
        DECLARE codigo int DEFAULT 0;
        DECLARE precio int DEFAULT 0;
DECLARE valores CURSOR FOR SELECT t.codigo FROM sig_temp t JOIN sig_category ca WHERE t.clasif = ca.category_name;

 DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET v_finished = 1;
 OPEN valores;
 get_valores: LOOP
 FETCH valores INTO codigo;
  INSERT INTO sig_materials (code,name,unit,price,idcategory)
SELECT t.codigo, t.descripcion, t.und, t.vr_unit, ca.id_category
  FROM sig_temp t
  JOIN sig_category ca
  WHERE t.clasif = ca.category_name
ON DUPLICATE KEY UPDATE
    code=codigo;
 
 IF v_finished = 1 THEN 
 LEAVE get_valores;
 END IF;

 END LOOP get_valores;
 CLOSE valores;
end $$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS comparar $$
CREATE PROCEDURE `comparar`(in realese1 int, in realese2 int)
Begin
     SELECT * from configurationitem where idpaw=realese1;
     SELECT * from configurationitem where idpaw=realese2;
end $$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS detalleHuella $$
CREATE PROCEDURE `detalleHuella`(in realese int )
Begin
select namepawprint, version, fecha, type, item, password from pawprint join configurationitem on idpawprnt=idpaw and idpawprnt=realese;
end $$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS generatedPawPrint $$
CREATE PROCEDURE `generatedPawPrint`(IN name VARCHAR(50),in version varchar(5))
BEGIN
declare t_name varchar(64);
declare p_name varchar(64);
  declare  done boolean DEFAULT false;
DECLARE tablas_vistas CURSOR FOR
      SELECT table_name FROM information_schema.COLUMNS WHERE table_schema = 'pawprints' GROUP BY table_name;
 
DECLARE procedimientos CURSOR FOR
      SELECT routines.routine_name FROM information_schema.routines LEFT JOIN information_schema.parameters ON routines.specific_name=parameters.specific_name WHERE parameters.specific_schema='pawprints' group by routines.routine_name ORDER BY routines.routine_name;         
        
         DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = true;
       
       OPEN tablas_vistas;
        get_record: LOOP
            FETCH tablas_vistas INTO t_name;
            IF done = true THEN
                LEAVE get_record;
            END IF;
                INSERT INTO pawPrint VALUES(null,name,version,now(),'Tabla/Vista',t_name,sha256tableF(t_name));   
        END LOOP get_record;
        SET done = false;
        CLOSE tablas_vistas;     

        OPEN procedimientos;
        get_record: LOOP
            FETCH procedimientos INTO p_name;
            IF done = true THEN
                LEAVE get_record;
            END IF;
                INSERT INTO pawPrint VALUES(null,name,version,now(),'Procedure/Function',p_name,sha256tableF(p_name));   
        END LOOP get_record;
        SET done = false;
        CLOSE procedimientos;  

END $$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS generatedPawPrintF $$
CREATE PROCEDURE `generatedPawPrintF`(IN name VARCHAR(50),in version varchar(5))
BEGIN
declare t_name varchar(64);
declare p_name varchar(64);
declare np varchar(30);
declare id int;
declare v varchar(5);
  declare  done boolean DEFAULT false;
DECLARE tablas_vistas CURSOR FOR
      SELECT table_name FROM information_schema.COLUMNS WHERE table_schema = 'pawprints' GROUP BY table_name;
 
DECLARE procedimientos CURSOR FOR
      SELECT routines.routine_name FROM information_schema.routines LEFT JOIN information_schema.parameters ON routines.specific_name=parameters.specific_name WHERE parameters.specific_schema='pawprints' group by routines.routine_name ORDER BY routines.routine_name;         
        
         DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = true;

       select namepawprint, version into np, v from pawprint where namepawprint=name and version=version;
        IF(np is null) THEN
         
                insert into pawprint values(null,name,version,now());
                  set id=LAST_INSERT_ID() ;
                    
                    SET done = false;
                    OPEN tablas_vistas;
                    get_record: LOOP
                        FETCH tablas_vistas INTO t_name;
                        IF done = true THEN
                            LEAVE get_record;
                        END IF;
                            INSERT INTO configurationitem VALUES(null,'Tabla/Vista',t_name,sha256tableF(t_name), id);   
                    END LOOP get_record;
                    SET done = false;
                    CLOSE tablas_vistas;     

                    OPEN procedimientos;
                    get_record: LOOP
                        FETCH procedimientos INTO p_name;
                        IF done = true THEN
                            LEAVE get_record;
                        END IF;
                            INSERT INTO configurationitem VALUES(null,'Procedure/Function',p_name,sha256tableF(p_name),id);   
                    END LOOP get_record;
                    SET done = false;
                    CLOSE procedimientos; 
            
        END IF;

END $$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS loadCategory $$
CREATE PROCEDURE `loadCategory`(IN tabla VARCHAR(50))
BEGIN
IF tabla = "sig_materials" THEN
    insert ignore into sig_category (category_name, category_type) select distinct clasif, 1 from sig_temp;
ELSEIF tabla = "sig_tools" THEN 
    insert ignore into sig_category (category_name, category_type) select distinct clasif, 2 from sig_temp;
ELSEIF tabla = "sig_machinaries" THEN 
    insert ignore into sig_category (category_name, category_type) select distinct clasif, 3 from sig_temp;    
ELSEIF tabla = "sig_workforce" THEN 
    insert ignore into sig_category (category_name, category_type) select distinct clasif, 4 from sig_temp;     
END IF;

END $$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS loadDataInfile $$
CREATE PROCEDURE `loadDataInfile`(IN `tabla` VARCHAR(50))
BEGIN
DECLARE done BOOLEAN DEFAULT FALSE;
DECLARE cod integer;
DECLARE pre integer;
DECLARE c1 CURSOR FOR SELECT t.codigo, t.vr_unit FROM sig_temp t JOIN sig_category ca WHERE t.clasif = ca.category_name;
DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = TRUE;
open c1;
  c1_loop: LOOP
    fetch c1 into cod, pre;
  IF done THEN 
        if(cod != 0)then
              IF tabla = "sig_materials" THEN
              INSERT INTO sig_materials(code,name,unit,price,idCategory)
              SELECT t.codigo, t.descripcion, t.und, t.vr_unit, ca.id_category
                  FROM sig_temp t
                  JOIN sig_category ca
                  WHERE t.clasif = ca.category_name
                  and ca.category_type=1
              ON DUPLICATE KEY UPDATE   price=pre;                           
          ELSEIF tabla = "sig_tools" THEN 
                  INSERT INTO sig_materials(code,name,unit,price,idcategory)
                  SELECT t.codigo, t.descripcion, t.und, t.vr_unit, ca.id_category
                      FROM sig_temp t
                      JOIN sig_category ca
                      WHERE t.clasif = ca.category_name
                      and ca.category_type=2
                  ON DUPLICATE KEY UPDATE
                      price=pre; 
          ELSEIF tabla = "sig_machinaries" THEN 
                      INSERT INTO sig_materials(code,name,unit,price,idcategory)
                      SELECT t.codigo, t.descripcion, t.und, t.vr_unit, ca.id_category
                          FROM sig_temp t
                          JOIN sig_category ca
                          WHERE t.clasif = ca.category_name
                          and ca.category_type=3
                      ON DUPLICATE KEY UPDATE
                          price=pre;  
          ELSEIF tabla = "sig_workforce" THEN 
                          INSERT INTO sig_materials(code,name,unit,price,idcategory)
                          SELECT t.codigo, t.descripcion, t.und, t.vr_unit, ca.id_category
                              FROM sig_temp t
                              JOIN sig_category ca
                              WHERE t.clasif = ca.category_name
                              and ca.category_type=4
                          ON DUPLICATE KEY UPDATE
                              price=pre;  
          END IF;
      END IF;
      LEAVE c1_loop; 
      END IF; 
  END LOOP c1_loop;
CLOSE c1;
truncate table sig_temp;
END $$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS loadDataInfile1 $$
CREATE PROCEDURE `loadDataInfile1`(IN tabla VARCHAR(50))
BEGIN
    DECLARE done BOOLEAN DEFAULT FALSE;
    DECLARE cod integer;
    DECLARE pre integer;
    DECLARE c1 CURSOR FOR SELECT t.codigo, t.vr_unit FROM sig_temp t JOIN sig_category ca WHERE t.clasif = ca.category_name;
    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = TRUE;
    open c1;
    c1_loop: LOOP
      fetch c1 into cod, pre;
    IF done THEN 
     LEAVE c1_loop; 
        END IF; 
           if(cod != 0)then
                IF tabla = "sig_materials" THEN
                INSERT INTO sig_materials(code,name,unit,price,idCategory)
                SELECT t.codigo, t.descripcion, t.und, t.vr_unit, ca.id_category
                    FROM sig_temp t
                    JOIN sig_category ca
                    WHERE t.clasif = ca.category_name
                    and ca.category_type=1
                ON DUPLICATE KEY UPDATE
                     price = IF(code = cod, pre, price);
     
            ELSEIF tabla = "sig_tools" THEN 
                    INSERT INTO sig_materials(code,name,unit,price,idcategory)
                    SELECT t.codigo, t.descripcion, t.und, t.vr_unit, ca.id_category
                        FROM sig_temp t
                        JOIN sig_category ca
                        WHERE t.clasif = ca.category_name
                        and ca.category_type=2
                    ON DUPLICATE KEY UPDATE
                        price=pre; 
             ELSEIF tabla = "sig_machinaries" THEN 
                        INSERT INTO sig_materials(code,name,unit,price,idcategory)
                        SELECT t.codigo, t.descripcion, t.und, t.vr_unit, ca.id_category
                            FROM sig_temp t
                            JOIN sig_category ca
                            WHERE t.clasif = ca.category_name
                            and ca.category_type=3
                        ON DUPLICATE KEY UPDATE
                            price=pre;  
            ELSEIF tabla = "sig_workforce" THEN 
                            INSERT INTO sig_materials(code,name,unit,price,idcategory)
                            SELECT t.codigo, t.descripcion, t.und, t.vr_unit, ca.id_category
                                FROM sig_temp t
                                JOIN sig_category ca
                                WHERE t.clasif = ca.category_name
                                and ca.category_type=4
                            ON DUPLICATE KEY UPDATE
                                price=pre;  
            END IF;
        END IF;
       
    END LOOP c1_loop;
    CLOSE c1;

END $$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS loadDataInfile2 $$
CREATE PROCEDURE `loadDataInfile2`(IN `tabla` VARCHAR(50))
BEGIN
DECLARE done BOOLEAN DEFAULT FALSE;
DECLARE cod integer;
DECLARE pre integer;
DECLARE c1 CURSOR FOR SELECT t.codigo, t.vr_unit FROM sig_temp t JOIN sig_category ca WHERE t.clasif = ca.category_name;
DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = TRUE;
open c1;
c1_loop: LOOP
  fetch c1 into cod, pre;
IF done THEN 
       if(cod != 0)then
            IF tabla = "sig_materials" THEN
            INSERT INTO sig_materials(code,name,unit,price,idCategory)
            SELECT t.codigo, t.descripcion, t.und, t.vr_unit, ca.id_category
                FROM sig_temp t
                JOIN sig_category ca
                WHERE t.clasif = ca.category_name
                and ca.category_type=1
            ON DUPLICATE KEY UPDATE
                price=pre;  
        ELSEIF tabla = "sig_tools" THEN 
                INSERT INTO sig_materials(code,name,unit,price,idcategory)
                SELECT t.codigo, t.descripcion, t.und, t.vr_unit, ca.id_category
                    FROM sig_temp t
                    JOIN sig_category ca
                    WHERE t.clasif = ca.category_name
                    and ca.category_type=2
                ON DUPLICATE KEY UPDATE
                    price=pre; 
         ELSEIF tabla = "sig_machinaries" THEN 
                    INSERT INTO sig_materials(code,name,unit,price,idcategory)
                    SELECT t.codigo, t.descripcion, t.und, t.vr_unit, ca.id_category
                        FROM sig_temp t
                        JOIN sig_category ca
                        WHERE t.clasif = ca.category_name
                        and ca.category_type=3
                    ON DUPLICATE KEY UPDATE
                        price=pre;  
        ELSEIF tabla = "sig_workforce" THEN 
                        INSERT INTO sig_materials(code,name,unit,price,idcategory)
                        SELECT t.codigo, t.descripcion, t.und, t.vr_unit, ca.id_category
                            FROM sig_temp t
                            JOIN sig_category ca
                            WHERE t.clasif = ca.category_name
                            and ca.category_type=4
                        ON DUPLICATE KEY UPDATE
                            price=pre;  
        END IF;
    END IF;
    LEAVE c1_loop; 
    END IF; 
END LOOP c1_loop;
CLOSE c1;

END $$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS loadDataInfile3 $$
CREATE PROCEDURE `loadDataInfile3`(IN tabla VARCHAR(50))
BEGIN
    DECLARE done BOOLEAN DEFAULT FALSE;
    DECLARE cod integer;
    DECLARE pre integer;
    DECLARE c1 CURSOR FOR SELECT t.codigo, t.vr_unit FROM sig_temp t JOIN sig_category ca WHERE t.clasif = ca.category_name;
    DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = TRUE;
    open c1;
    c1_loop: LOOP
      fetch c1 into cod, pre;
    IF done THEN 
     LEAVE c1_loop; 
        END IF; 
           if(cod != 0)then
                IF tabla = "sig_materials" THEN
                INSERT INTO sig_materials(code,name,unit,price,idCategory)
                SELECT t.codigo, t.descripcion, t.und, t.vr_unit, ca.id_category
                    FROM sig_temp t
                    JOIN sig_category ca
                    WHERE t.clasif = ca.category_name
                    and ca.category_type=1
                ON DUPLICATE KEY UPDATE
                     price = IF(code = cod, pre, price);     
            ELSEIF tabla = "sig_tools" THEN 
                    INSERT INTO sig_materials(code,name,unit,price,idcategory)
                    SELECT t.codigo, t.descripcion, t.und, t.vr_unit, ca.id_category
                        FROM sig_temp t
                        JOIN sig_category ca
                        WHERE t.clasif = ca.category_name
                        and ca.category_type=2
                    ON DUPLICATE KEY UPDATE
                         price = IF(code = cod, pre, price);
             ELSEIF tabla = "sig_machinaries" THEN 
                        INSERT INTO sig_materials(code,name,unit,price,idcategory)
                        SELECT t.codigo, t.descripcion, t.und, t.vr_unit, ca.id_category
                            FROM sig_temp t
                            JOIN sig_category ca
                            WHERE t.clasif = ca.category_name
                            and ca.category_type=3
                        ON DUPLICATE KEY UPDATE
                             price = IF(code = cod, pre, price);  
            ELSEIF tabla = "sig_workforce" THEN 
                            INSERT INTO sig_materials(code,name,unit,price,idcategory)
                            SELECT t.codigo, t.descripcion, t.und, t.vr_unit, ca.id_category
                                FROM sig_temp t
                                JOIN sig_category ca
                                WHERE t.clasif = ca.category_name
                                and ca.category_type=4
                            ON DUPLICATE KEY UPDATE
                                 price = IF(code = cod, pre, price);  
            END IF;
        END IF;
       
    END LOOP c1_loop;
    CLOSE c1;

END $$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS mostrarMateriales $$
CREATE PROCEDURE `mostrarMateriales`()
begin
DECLARE v_finished INTEGER DEFAULT 0;
        DECLARE codigo int DEFAULT 0;
        DECLARE precio int DEFAULT 0;
DECLARE valores CURSOR FOR SELECT t.codigo FROM sig_temp t JOIN sig_category ca WHERE t.clasif = ca.category_name;

 DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET v_finished = 1;
 
 OPEN valores;
 
 get_valores: LOOP
 
 FETCH valores INTO codigo;
 
 IF v_finished = 1 THEN 
 LEAVE get_valores;
 END IF;
 select codigo;
 END LOOP get_valores;
 CLOSE valores;

end $$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS validatepawPrint $$
CREATE PROCEDURE `validatepawPrint`(in namReal int)
Begin

    declare t varchar(50);
    declare n varchar(30);
    declare p varchar(500);
    declare p2 varchar(500);
    declare idp int;
    declare id varchar(30);
    declare done boolean DEFAULT false;
     
     DECLARE result CURSOR FOR select type,item,password, case type WHEN 'Tabla/Vista' THEN sha256tableF(item) ELSE sha256tableF(item) END AS Password2, idpaw from configurationitem c   where idpaw= namReal;
      
        DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = true;
    if not exists(select idpaw from pawPrint_temp where idpaw=namreal) then
            OPEN result;
                get_record: LOOP
                FETCH result INTO t,n,p,p2,idp;
                    IF done = true THEN
                        LEAVE get_record;
                    END IF;
                        INSERT INTO pawPrint_temp VALUES(null,t,n,p,p2,idp);
                END LOOP get_record;   
            CLOSE result;  
            ELSE
             OPEN result;
                get_record: LOOP
                FETCH result INTO t,n,p,p2,idp;
                    IF done = true THEN
                        LEAVE get_record;
                    END IF;
                       UPDATE pawPrint_temp SET password2=p2 WHERE idpaw=idp and item=n;
                END LOOP get_record;   
            CLOSE result;
     end if;      
            select  type, item, password, password2 from pawprint_temp where idpaw=namreal ;
    End $$
DELIMITER ;

DELIMITER $$
DROP PROCEDURE IF EXISTS verValores $$
CREATE PROCEDURE `verValores`()
begin
    DECLARE fetch_status INTEGER DEFAULT 1;
            DECLARE codigo int DEFAULT 0;
            DECLARE valores CURSOR FOR SELECT t.codigo FROM sig_temp t JOIN sig_category ca WHERE t.clasif = ca.category_name;
            DECLARE CONTINUE HANDLER 
            FOR NOT FOUND SET fetch_status = 0;
            OPEN valores;
                FETCH NEXT FROM valores INTO codigo;
                while  fetch_status = 0 do
                  SELECT codigo;
                  
                END while;
            CLOSE valores;
end $$
DELIMITER ;

