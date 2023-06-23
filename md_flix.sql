CREATE DATABASE  IF NOT EXISTS `md_flix` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
USE `md_flix`;
-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: md_flix
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `assiste`
--

DROP TABLE IF EXISTS `assiste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assiste` (
  `Liberar_conteudo` tinyint(1) DEFAULT NULL,
  `Favoritar_conteudo` tinyint(1) DEFAULT NULL,
  `emailUsuario` varchar(50) NOT NULL,
  `idConteudo` int(11) DEFAULT NULL,
  KEY `emailUsuario` (`emailUsuario`),
  KEY `idConteudo` (`idConteudo`),
  CONSTRAINT `assiste_ibfk_1` FOREIGN KEY (`emailUsuario`) REFERENCES `usuarios` (`Email`),
  CONSTRAINT `assiste_ibfk_2` FOREIGN KEY (`idConteudo`) REFERENCES `conteudo` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assiste`
--

LOCK TABLES `assiste` WRITE;
/*!40000 ALTER TABLE `assiste` DISABLE KEYS */;
INSERT INTO `assiste` VALUES (1,0,'matheusmendes55@outlook.com',2),(2,1,'tomazalbino@outlook.com',1),(2,0,'fernandacecilia10@outlook.com',3),(2,0,'paloma5novanta@outlook.com',4),(1,0,'joseferreira7@outlook.com',5),(2,0,'fehmaria35@outlook.com',6),(2,1,'enzofernandez@outlook.com',7),(1,0,'gertrudesmaria@outlook.com',8),(2,0,'lorrana10ap@outlook.com',9),(2,0,'rafamendes10@outlook.com',10),(2,0,'joaosilva@example.com',11),(2,1,'mariasantos@example.com',12),(2,0,'pedrooliveira@example.com',1),(1,0,'anapereira@example.com',7),(2,1,'sofiacosta@example.com',1);
/*!40000 ALTER TABLE `assiste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conteudo`
--

DROP TABLE IF EXISTS `conteudo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conteudo` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(50) NOT NULL,
  `Diretor` varchar(50) DEFAULT NULL,
  `Sinopse` text DEFAULT NULL,
  `Temporadas` int(11) DEFAULT NULL,
  `Duracao` time DEFAULT NULL,
  `Genero` varchar(50) DEFAULT NULL,
  `Favoritar_conteudo` tinyint(1) DEFAULT NULL,
  `Improprio_menor` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conteudo`
--

LOCK TABLES `conteudo` WRITE;
/*!40000 ALTER TABLE `conteudo` DISABLE KEYS */;
INSERT INTO `conteudo` VALUES (1,'The Walking Dead','Robert Kirkiman','Baseado na história em quadrinhos escrita por Robert Kirkman, este drama potente e visceral retrata a vida nos Estados Unidos pós-apocalíptico. Um grupo de sobreviventes, liderado pelo policial Rick Grimes, segue viajando em busca de uma nova moradia segura e distante dos mortos-vivos. A pressão para permanecerem vivos e lutarem pela sobrevivência faz com que muitos do grupo sejam submetidos às mais profundas formas de crueldade humana. Rick acaba descobrindo que o tão assustador desespero pela subsistência pode ser ainda mais fatal do que os próprios mortos-vivos que os rodeiam',11,'00:00:00','Terror, Apocalipse zumbi, Drama, Ficção pós-apocal',1,0),(2,'Arrow','David Nutter','Após um violento naufrágio, o playboy milionário Oliver Queen é dado como morto. Cinco anos depois, é resgatado de uma ilha do Pacífico e enviado de volta para Starling City, onde passa a agir como vigilante secreto',8,'00:00:00','Super-herói, Drama, Ação, Crime, Mistério',1,0),(3,'The Flash',' Greg Berlanti, Andrew Kreisberg, Gabrielle Stanto','Acompanhe as aventuras do homem mais veloz do planeta, o cientista da Central City Police Barry Allen, que após um trágico acidente adquire o poder da velocidade',9,'00:00:00','super-herói, drama, ficção científica, aventura',1,0),(4,'The Witcher','Lauren Schmidt Hissrich','O mutante Geralt de Rívia é um caçador de monstros que luta para encontrar seu lugar em um mundo onde as pessoas, muitas vezes, são mais perversas do que as criaturas selvagens.',3,'00:00:00','fantasia',1,0),(5,'Shadowhunters','Ed Decter','Clary Fray descobre que tem sangue angelical e faz parte de uma raça de caçadores de demônios.',3,'00:00:00','fantasia',1,0),(6,'Resgate','Sam Hargrave','Em Bangladesh, o mercenário do mercado negro Tyler Rake luta para sobreviver durante a missão para resgatar o filho sequestrado de um chefe do crime internacional',0,'00:00:01','Ação e aventura',1,0),(7,'Velozes e furiosos','Rob Cohen','Brian OConner é um policial que se infiltra no submundo dos rachas de rua para investigar uma série de furtos. Enquanto tenta ganhar o respeito e a confiança do líder Dom Toretto, ele corre o risco de ser desmascarado',0,'00:00:01','ação, aventura, policial',1,0),(8,'Dragon Ball Super Broly','Tatsuya Nagamine','Apesar da Terra estar em um período de calmaria, Goku se recusa a parar de treinar constantemente. O que ele não imaginava era que seu novo inimigo seria Broly, um poderoso super saiyajin sedento por vingança, que deseja destruir todos que encontrar pela frente',0,'00:00:01','Ação, Animação',1,0),(9,'homem Aranha','Sam Raimi','Depois de ser picado por uma aranha geneticamente modificada em uma demonstração científica, o jovem nerd Peter Parker ganha superpoderes. Inicialmente, ele pretende usá-los para para ganhar dinheiro, adotando o nome de Homem-Aranha e se apresentando em lutas de exibição. Porém, ao presenciar o assassinando de seu tio Ben e sentir-se culpado, Peter decide não mais usar seus poderes para proveito próprio e sim para enfrentar o mal, tendo como seu primeiro grande desafio o psicótico Duende Verde.',0,'00:00:02','Ação, ficção',1,0),(10,'Thor','Kenneth Branagh','Como filho de Odin, rei dos deuses nórdicos, Thor logo herdará o trono de Asgard de seu idoso pai. Porém, no dia de sua coroação, Thor reage com brutalidade quando os inimigos dos deuses entram no palácio violando o tratado. Como punição, Odin manda Thor para a Terra. Enquanto seu irmão Loki conspira em Asgard, Thor, agora sem seus poderes, enfrenta sua maior ameaça.',0,'00:00:01','ação, fantasia',1,0),(11,'Vingadores: Ultimato','Anthony Russo, Joe Russo','Após Thanos eliminar metade das criaturas vivas, os Vingadores têm de lidar com a perda de amigos e entes queridos. Com Tony Stark vagando perdido no espaço sem água e comida, Steve Rogers e Natasha Romanov lideram a resistência contra o titã louco.',0,'00:00:03','Ação, ficção científica',1,0),(12,'Vingadores: Ultimato','Anthony Russo, Joe Russo','Após Thanos eliminar metade das criaturas vivas, os Vingadores têm de lidar com a perda de amigos e entes queridos. Com Tony Stark vagando perdido no espaço sem água e comida, Steve Rogers e Natasha Romanov lideram a resistência contra o titã louco.',0,'00:00:03','Ação, ficção científica',1,0);
/*!40000 ALTER TABLE `conteudo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `envia`
--

DROP TABLE IF EXISTS `envia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `envia` (
  `email_usuario` varchar(50) NOT NULL,
  `chSuporte` int(11) NOT NULL AUTO_INCREMENT,
  KEY `email_usuario` (`email_usuario`),
  KEY `chSuporte` (`chSuporte`),
  CONSTRAINT `envia_ibfk_1` FOREIGN KEY (`email_usuario`) REFERENCES `usuarios` (`Email`),
  CONSTRAINT `envia_ibfk_2` FOREIGN KEY (`chSuporte`) REFERENCES `suporte_cliente` (`id_suporte`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envia`
--

LOCK TABLES `envia` WRITE;
/*!40000 ALTER TABLE `envia` DISABLE KEYS */;
INSERT INTO `envia` VALUES ('matheusmendes55@outlook.com',2),('tomazalbino@outlook.com',1),('fernandacecilia10@outlook.com',3),('paloma5novanta@outlook.com',4),('joseferreira7@outlook.com',5),('fehmaria35@outlook.com',6),('enzofernandez@outlook.com',7),('gertrudesmaria@outlook.com',8),('lorrana10ap@outlook.com',9),('rafamendes10@outlook.com',10),('joaosilva@example.com',11),('mariasantos@example.com',12),('pedrooliveira@example.com',1),('anapereira@example.com',7),('sofiacosta@example.com',1);
/*!40000 ALTER TABLE `envia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suporte_cliente`
--

DROP TABLE IF EXISTS `suporte_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suporte_cliente` (
  `id_suporte` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `assunto` varchar(255) DEFAULT NULL,
  `mensagem` text DEFAULT NULL,
  `status_suporte` varchar(50) DEFAULT NULL,
  `data_suporte` date DEFAULT NULL,
  PRIMARY KEY (`id_suporte`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suporte_cliente`
--

LOCK TABLES `suporte_cliente` WRITE;
/*!40000 ALTER TABLE `suporte_cliente` DISABLE KEYS */;
INSERT INTO `suporte_cliente` VALUES (1,1001,'Problemas de login','Não consigo fazer login na minha conta.','Aberto','2023-06-01'),(2,1002,'Dúvida sobre pagamento','Gostaria de saber como posso efetuar o pagamento.','Em andamento','2023-06-02'),(3,1003,'Erro ao carregar conteúdos','Quando tento iniciar algum conteúdo, recebo um erro.','Fechado','2022-06-03'),(4,1004,'Troca de plano','Gostaria de solicitar a troca do plano, pois pelo app não está dando certo.','Fechado','2021-06-04'),(5,1005,'Conteúdo para maiores','O conteúdo para maiores não está bloqueado','Em andamento','2023-02-05'),(6,1006,'Cancelamento','Quero cancelar meu plano, pelo app não deu certo','Fechado','2022-06-06'),(7,1007,'App está saindo','App fica saindo toda hora, não consigo assistir nada assim, como resolver?','Aberto','2023-06-07'),(8,1008,'Compartilhamento','Compatilhamento de telas não está funcionando','Em andamento','2023-06-08'),(9,1009,'Dúvida sobre promoção','A promoção anunciada dos pacotes ainda está válida?','Fechado','2021-06-09'),(10,1010,'Problema no app','O app está apresentando lentidão e erros constantes.','Aberto','2023-06-10'),(11,1013,'Problema de legendas','As legendas não estão sincronizadas com o áudio.','Fechado','2021-06-09'),(12,1011,'Erro na busca','Ao pesquisar um filme, não obtenho resultados.','Aberto','2023-01-07'),(13,1012,'Dúvida sobre categorias','As categorias não estão separadas no sistema','Fechado','2023-06-06'),(14,1014,'Dificuldade de navegação','Não estou conseguindo fazer pesquisas de conteúdo, quando clico, não tenho resultado','Fechado','2022-06-14'),(15,1005,'Problema de cobrança','Houve um erro na cobrança do meu cartão de crédito, cobrou duas vezes','Em andamento','2023-06-15');
/*!40000 ALTER TABLE `suporte_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `Email` varchar(50) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Cpf` char(11) NOT NULL,
  `Senha` varchar(20) NOT NULL,
  `Data_nascimento` date NOT NULL,
  PRIMARY KEY (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES ('anapereira@example.com','Ana Pereira','54321678902','senha456','1993-03-10'),('enzofernandez@outlook.com','Enzo Fernandez','72194610010','enzinho010@','2005-05-10'),('fehmaria35@outlook.com','Maria Fernanda','15117100713','feh3577@','2000-03-27'),('fernandacecilia10@outlook.com','Fernanda cecilia','41211020505','57@904','1999-01-05'),('gertrudesmaria@outlook.com','Maria Gertrudes','00402112007','45612390','1970-11-20'),('joaosilva@example.com','João Silva','12345678901','senha123','1990-05-15'),('joseferreira7@outlook.com','Jose Ferreira','00489032177','789123000','1980-07-15'),('lorrana10ap@outlook.com','Lorrana Aparecida','23178923100','lolo231@','2001-04-17'),('mariasantos@example.com','Maria Santos','98765432109','456senha','1985-11-30'),('matheusmendes55@outlook.com','Matheus Mendes','11110800055','123456','1993-08-02'),('paloma5novanta@outlook.com','Paloma Novanta','34512905623','23a671@','1995-10-21'),('pedrooliveira@example.com','Pedro Oliveira','56789012345','789senha','1998-07-20'),('rafamendes10@outlook.com','Rafael Mendes','32165710577','rafinha010','2000-11-03'),('sofiacosta@example.com','Sofia Costa','65432109876','123senha','2000-09-05'),('tomazalbino@outlook.com','Tomaz Albino','15610900055','654321','1990-07-22');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-17 19:50:00
