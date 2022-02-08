CREATE DATABASE  IF NOT EXISTS `codeandtravel` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `codeandtravel`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: codeandtravel
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `destinos`
--

DROP TABLE IF EXISTS `destinos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `destinos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descricao` longtext NOT NULL,
  `dias` varchar(255) NOT NULL,
  `local` varchar(50) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `url` varchar(255) NOT NULL,
  `valor` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destinos`
--

LOCK TABLES `destinos` WRITE;
/*!40000 ALTER TABLE `destinos` DISABLE KEYS */;
INSERT INTO `destinos` VALUES (1,'','2 Dias, 3 Noites','Recife-PE','Praia de Boa Viagem','https://ibis.accor.com/editorial/imagerie/article/praia-de-boa-viagem-6db9_660x440.jpg',1656),(2,'Monumento Natural dos Morros do Pão de Açúcar e da Urca é um complexo de morros localizado no bairro da Urca, na cidade do Rio de Janeiro, no Brasil. É composto pelo Morro do Pão de Açúcar e pelo Morro da Urca. Junto com a estátua do Cristo Redentor, é o maior','2 Dias, 3 Noites','Rio de Janeiro-RJ','Pão de Açucar','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuv8pvre5hCCbRoi_4BkDtQr7JIz9MOAVtgnJ_521XcgPQY8AvfIjEtoqR1ix65irZJuKAP7IkSgUUROtUZs4_6w',1233),(3,'Museu de Arte de São Paulo Assis Chateaubriand é um centro cultural e museu brasileiro concebido em 1947 idealizado pelo jornalista paraibano Assis Chateaubriand com o crítico de arte italiano Pietro Bardi. situado desde 7 de novembro de 1968, na Avenida Paulista,','1 Dia, 1 Noite','São Paulo-SP','Museu Assis Chateaubriand','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRkSStV1QrJZ0KFO-igIUmaD0kPQWGjGr_zRdPXTP7z47_Kwk3BEVQsakmsnzyL2piF9Z0tE3bl-URy4AYv7t3hRQ',450),(4,'Cristo Redentor é uma estátua art déco que retrata Jesus Cristo, localizada no topo do morro do Corcovado, a 709 metros acima do nível do mar, no Parque Nacional da Tijuca, com vista para a maior parte da cidade do Rio de Janeiro, Brasil. Em 2007, foi eleito informalmente','2 Dias, 3 Noites','Rio de Janeiro-RJ','Cristo Redentor','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcS-lI8dDTAYonrBjH1ZDTy6VJkS3PhDRWjg-gROGf_YngjBO_cMrPuhGem-ndq_WQlV-xseOYbMDQlW02L1Y6fZhw',1449),(5,'O Parque Nacional dos Lençóis Maranhenses é uma unidade de conservação brasileira de proteção integral à natureza localizada na região nordeste do estado do Maranhão. O território do parque, com uma área de 156 584 ha, está distribuído pelos municípios de','2 Dias, 3 Noites','Barreirinhas-MA','Lençóis Maranhenses','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDMNPneDMkyhJdHQSCyFpi8nwV4vTODb5hZ85wl5BM7ys2gVGVLCejxi6fwtct_2OwuV2urEBK97NOXyUyNUGF7Q',2115),(6,'Baía do Sancho é uma baía de águas claras localizada a oeste do Morro Dois Irmãos e a leste da Baía dos Golfinhos, no arquipélago de Fernando de Noronha, no estado de Pernambuco, Brasil. O local abriga uma praia de mesmo nome. Na porção central da baía são encontradas,,','2 Dias, 3 Noites','Fernando de Noronha-PE','Praia do Sancho','https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcTBPtsRsstQbsHeE2msRQjnmijpA3Zd1fGrk-ZOyfeX1roaAWjfZTiv6hvIkePt0jgo8-OEVftoGScC4HV5ZL4Yow',2332),(7,'O Parque Nacional da Chapada dos Veadeiros é uma unidade de conservação brasileira de proteção integral à natureza localizada na região centro-oeste do estado de Goiás, na Chapada dos Veadeiros. Até o final de maio de 2017, o parque abrangia uma área de 65 514 ha de','1 Dias','Chapada dos Veadeiros-GO','Chapada dos Veadeiros','https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSHBpK_w5-HimiglG1H5qBVbSyYXjRYaslYZFgl2EIEUTY-V_et8NQr2_yb9jqq48HYknHdunHYDKxWW4qxc07kWQ',140),(8,'Parque Nacional do Iguaçu é uma área protegida brasileira, do grupo das Unidades de Conservação. Está localizado na região Extremo Oeste Paranaense, a 17 km do centro da cidade de Foz do Iguaçu e a apenas 5 km do Aeroporto Internacional de Foz do Iguaçu. O Parque Nacional','2 Dias','Foz do Iguaçu-PR','Parque Nacional Iguaçu','https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcTYF9Iku08NFY-ZXgwMLSbm0WVI0FGaPHU-3ZhHE73v5x4Cbcz2V4ogJtEB9VHdVKryR0gkibZ7W5dRxyWRtWvzUA',598);
/*!40000 ALTER TABLE `destinos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-07 21:09:35
