-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: BileMoApi
-- ------------------------------------------------------
-- Server version	8.0.32
CREATE DATABASE IF NOT EXISTS bilemoapi;
USE bilemoapi;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C7440455E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'ivah.haley@gmail.com','[]','$2y$13$8OXtf.oWRssSfXKHVAMykOXYr.egU.JtjR9XAG1TWLdUrUP2jRA1W'),(2,'sydni.jast@cartwright.info','[]','$2y$13$aiZJKHIFDT4oS/ZsFt.3POXyR7zUkPSf0C8wg5hvKNSs2yDlDwbka'),(3,'arussel@kuhlman.com','[]','$2y$13$nyNHDXBHlZ8Zfpl3UVvQxO8AMOUqFS1P87wIsnHBbZ/i0JIo.34Hm'),(4,'jerod68@stiedemann.org','[]','$2y$13$eOBsQEQIA3W5QW9gS5aS1uZpFBpyuD/KlCMPkmu.eJfW1Xq9c.bM6'),(5,'green.murl@yahoo.com','[]','$2y$13$5J8LCmBR/G4yj.BX4OETduJ9FzEv8W6nOOdz/jV1nDjq9Cj/3ZzEa');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20230613195948','2023-06-13 21:59:54',142);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `release_date` date NOT NULL COMMENT '(DC2Type:date_immutable)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_D34A04AD5E237E06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Honor 7C 372','Similique id sed culpa voluptatem. Nulla incidunt perspiciatis voluptate nesciunt tempora nemo.',903,'2011-05-23'),(2,'Fairphone 2 437','Delectus voluptas nemo aut omnis. Et voluptatem dolorem voluptas occaecati neque quia. Adipisci voluptas qui possimus consequatur.',191,'2012-05-31'),(3,'HTC Desire 956','Consectetur doloribus officia et est. Soluta inventore qui labore praesentium doloremque. Ipsa dicta harum sint cupiditate dolores placeat omnis.',246,'2004-03-15'),(4,'Samsung Galaxy A70 486','Nobis fuga dolorem porro doloremque voluptate tempore est voluptatibus. Pariatur voluptatem deleniti incidunt. Nemo ullam illo assumenda modi. Saepe deleniti sed nihil inventore vero qui tempora.',891,'1999-02-24'),(5,'POCO C31 486','Dolore et harum ducimus libero ut. Accusantium nihil ullam exercitationem eligendi dolores expedita. Aut nulla illum rerum est. Et esse quasi fugit itaque voluptatibus dolore sunt aliquam.',788,'1986-05-25'),(6,'Nokia C02 289','Quam recusandae non vero dolorem quia ipsam accusamus. Aliquid rem mollitia aut alias explicabo veniam. Quod autem accusantium et quis et in minus. Nesciunt et quis deserunt et assumenda itaque voluptate.',239,'1988-10-20'),(7,'Pixel 7/Pro 653','Recusandae dignissimos voluptatibus nemo quis similique. Ipsam fuga at doloremque. Iusto provident velit officia occaecati ab et quae.',95,'2020-09-02'),(8,'HTC Desire 792','Dolore est rerum qui quidem officiis. Magni et officia ea in et cupiditate. Unde nihil sed molestiae asperiores a corporis possimus.',198,'2003-10-02'),(9,'POCO C31 559','Quis id odio ut qui. Est perspiciatis quo aliquam. Autem soluta velit sequi dolor qui. Architecto aut quaerat nobis soluta sed.',234,'1976-12-29'),(10,'Pixel 7/Pro 385','Velit aliquam ducimus ratione voluptatem non. Accusantium sed eum rerum beatae quo eos. Unde et officiis possimus veritatis distinctio dolores aperiam maxime. Asperiores atque rerum consequuntur.',705,'2015-07-22'),(11,'Asus ZenFone 6 323','Dolorem repellat vitae fugiat ab optio exercitationem accusantium. Aut explicabo ut corrupti dolores perferendis. Voluptatibus qui sequi voluptatem.',759,'1983-01-29'),(12,'Meizu 17/Pro 828','Ipsam aut enim quis culpa impedit voluptatem. Sit dolores repellat molestiae blanditiis. Est ullam dolores qui repudiandae dolorum perspiciatis veritatis consectetur. Quae sint perferendis sapiente autem possimus qui.',103,'1990-12-04'),(13,'Samsung Galaxy A01 109','Dolore neque voluptas enim ut. Nemo est a molestiae aperiam dicta iste aliquid cupiditate. Mollitia aliquid quae id inventore magnam. Modi minus nobis officia blanditiis inventore quia architecto.',397,'1984-01-20'),(14,'Pixel 6a 65','Nihil quia aperiam vel iusto qui quo. Et quaerat voluptas labore qui veniam. Voluptas neque modi dolores.',279,'1976-02-02'),(15,'Samsung Galaxy A70 328','Quod itaque voluptas culpa itaque rerum laudantium. Placeat tempore nemo est vel sit recusandae velit. Hic consequuntur sit omnis minima voluptas. Molestiae autem distinctio et odit eos qui.',216,'1971-04-28'),(16,'Meizu M6 119','Sed ad quae atque architecto. Nisi est eligendi voluptatum porro consequatur dicta. Quia atque reiciendis voluptas iusto odit maiores impedit. Nihil id non quis quaerat nisi. Inventore enim eaque adipisci molestiae.',940,'2010-01-01'),(17,'HTC Rezound 81','Vero quo amet qui vero vitae repudiandae. Magni omnis quod et et quis omnis. Iste dolor corporis ipsum deserunt eveniet ullam. Consequatur qui dolores dolores beatae quibusdam consectetur.',108,'2020-02-29'),(18,'POCO C31 445','Veritatis ducimus quia facere nemo velit ut iusto. Est esse officia ullam et rerum ratione est provident. Ipsam ab quam enim quidem veniam in et. Ea atque laborum eos et.',904,'2005-09-27'),(19,'POCO C31 449','Inventore debitis quisquam molestias officia. Corrupti repellat temporibus omnis. Dolor odio ut rerum sed officia. Quia accusantium dolore qui dolor voluptate qui. Et odit porro voluptatem nemo dolorum.',840,'2002-11-23'),(20,'Pixel 6a 988','Optio et inventore sed nihil. Nihil placeat qui asperiores est minima. Aut at fuga quis repellat incidunt. Ea qui ab dolor quo libero sunt modi.',572,'1971-09-23'),(21,'Samsung Galaxy A70 734','Similique exercitationem quis consequatur et. Illo et unde qui nam. Impedit earum est dolorem voluptatem nemo eum ipsum.',224,'2019-01-05'),(22,'Pixel 7/Pro 242','Illo sed aut sunt deleniti a laudantium amet. Odit laudantium itaque recusandae. Dolorem et officiis aut alias natus excepturi ab omnis. Repellat quo rerum voluptatem quibusdam autem quisquam illo.',954,'1993-06-20'),(23,'BlackBerry Priv 267','Aperiam doloremque consequatur quia voluptas reprehenderit. Nostrum debitis numquam maiores aut aliquid et. Quos deleniti eveniet eius repudiandae. Possimus occaecati quis et qui.',474,'2010-10-18'),(24,'Realme 10/5G 855','Ullam ipsam non suscipit sunt voluptas totam neque. Consectetur reiciendis unde vel ea deserunt et et officiis. Qui sed sit nulla reiciendis possimus sit delectus.',539,'1978-05-30'),(25,'BlackBerry Priv 174','Possimus vitae ut qui officia corrupti laboriosam doloribus. Voluptas aspernatur expedita qui et.',779,'1997-06-10'),(26,'Oppo N1 mini 583','Qui ipsa vitae deleniti molestiae sint aut a. Optio officiis quasi quasi. Nisi deserunt rem impedit id. Impedit harum incidunt reprehenderit et enim eum ut ut. Sapiente quidem rem eius consequatur amet. Incidunt sequi sit ad totam optio tempora.',526,'1993-06-02'),(27,'Oppo Reno 823','Amet nulla ut corporis omnis culpa dolorum assumenda sit. Ipsam atque recusandae itaque sequi nisi. Voluptatem consectetur in in.',431,'2007-12-22'),(28,'HTC Legend 357','Soluta assumenda totam inventore sed quis qui ipsa. Cumque voluptate excepturi ad earum. Porro nesciunt cum omnis sit et sed aut enim.',593,'1980-10-08'),(29,'BlackBerry Priv 586','Error quis quo porro et. Pariatur magni sit et dolorem perspiciatis nihil. Sequi ipsa dolorem omnis praesentium.',558,'1982-06-12'),(30,'Oppo N1 mini 735','Consequatur voluptas blanditiis est ratione consequatur error aliquid harum. Earum enim voluptas ex doloribus illum. Qui non architecto dolores. Eaque unde quasi magni deserunt. Quia asperiores incidunt iste qui provident.',275,'2006-11-29'),(31,'Realme 10/5G 645','Repellat ipsum quas officia rerum. Nobis explicabo sequi autem.',779,'1987-01-07'),(32,'Samsung Galaxy C7 792','Ut quae aliquid ea tempore perspiciatis aliquam nostrum excepturi. Omnis iusto ipsam numquam ut et sit. Et et dolorum quas et est repudiandae.',677,'1991-04-17'),(33,'Goophone X 882','Molestiae consequuntur dolores optio. Cumque in voluptas ducimus dolores. Beatae explicabo iste alias non est. Modi corrupti suscipit optio. Nam consequuntur excepturi est. Numquam et voluptate praesentium eveniet.',605,'2000-07-22'),(34,'Samsung Galaxy A70 327','Amet culpa eveniet suscipit. In eligendi qui deserunt voluptatem. Voluptatem eos quo vel consectetur. Rerum et velit corrupti nam. Nobis a est iste aspernatur. Quasi magni nemo voluptates consequuntur nihil cum quidem.',921,'1997-11-06'),(35,'Goophone X 279','Sequi debitis nostrum quo dolores. Sit dolores exercitationem tenetur corporis voluptas. Sit sint sint amet quos qui magni sit commodi. Omnis perspiciatis qui aspernatur qui qui qui optio. Enim pariatur iure voluptatum quis voluptatem quis.',617,'2003-05-03'),(36,'Oppo N1 mini 444','Ut optio deleniti adipisci ullam. Sunt quo eum suscipit quia. Rerum ipsam voluptate aliquam ad perferendis cum. Nihil sint est sed nostrum placeat deleniti expedita dolores. Est pariatur voluptates cum non omnis autem accusamus.',543,'1975-01-14'),(37,'Samsung Galaxy A01 309','Excepturi et sunt quas voluptas aut dolore qui. Nihil qui in aut et minima. Et recusandae voluptas quos perspiciatis et a.',167,'2009-01-20'),(38,'CAT S62 Pro 873','Sint voluptatem expedita omnis laudantium. Quia quae fuga consequatur enim iste voluptatum et. Optio voluptatem quia ex est eum. Et laborum unde vitae dolorem ratione incidunt est. Sed qui iusto aut minus. Incidunt ab et et sint exercitationem rerum.',204,'1988-03-21'),(39,'Realme 10/5G 593','Voluptas dolorem illo tempore iure ducimus. Et enim autem labore nisi vero rem ea. Aliquid eligendi provident omnis iusto et quam.',501,'1983-01-12'),(40,'Goophone X 748','Pariatur in qui ut ut impedit est. Aliquid expedita nostrum qui ad necessitatibus. Rerum et maxime fugiat. Quam mollitia excepturi qui.',647,'1970-02-15');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8D93D64919EB6921` (`client_id`),
  CONSTRAINT `FK_8D93D64919EB6921` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,4,'Ryleigh','Larkin','+1.640.513.2399','rmante@gmail.com'),(2,2,'Adella','Kozey','+15136078020','kautzer.felix@reichel.com'),(3,2,'Maryam','Hettinger','+1-804-489-7749','camille.welch@pfeffer.org'),(4,1,'Jacquelyn','Weissnat','(503) 745-5240','nabshire@hotmail.com'),(5,1,'Monroe','Douglas','+1-573-299-0859','beier.chloe@yahoo.com'),(6,4,'Brady','Ebert','+1-785-707-2788','towne.meredith@homenick.org'),(7,3,'Hilda','Kassulke','1-254-849-2428','teresa47@hotmail.com'),(8,4,'Therese','Ankunding','469.955.3579','madelynn63@yost.biz'),(9,4,'Chance','Gottlieb','+1.458.400.2490','mfay@davis.net'),(10,3,'Raquel','Crona','614.769.6677','mertz.magdalena@hotmail.com'),(11,3,'Kiel','Beahan','(830) 773-2994','roman98@gmail.com'),(12,2,'Briana','Sporer','843-667-4825','jkshlerin@gmail.com'),(13,3,'Brandt','Stiedemann','747.723.9389','domenick.friesen@schneider.info'),(14,3,'Clementine','Mitchell','+1-785-660-0077','celestine.runolfsdottir@yahoo.com'),(15,3,'Lincoln','Gislason','925-994-4947','homenick.georgiana@hotmail.com'),(16,1,'Adeline','Harber','1-321-990-1572','kozey.kayley@moore.com'),(17,2,'Pete','Walter','+1-252-917-5685','botsford.clemmie@hilpert.com'),(18,4,'Lucious','Schmidt','657.573.9266','kshlerin.sallie@jerde.com'),(19,2,'Jailyn','Reinger','1-678-526-3290','gerald41@hotmail.com'),(20,2,'Filomena','Streich','+1-972-239-4149','federico.hodkiewicz@kreiger.info'),(21,3,'Vinnie','Hand','(347) 515-3970','adell37@fahey.com'),(22,5,'Carey','Keeling','678.664.7736','haag.leda@gmail.com'),(23,3,'Raymundo','Gusikowski','+1 (406) 715-7170','dpfannerstill@crooks.com'),(24,2,'Zachary','Beahan','1-419-363-3733','ijerde@bernier.net'),(25,2,'Araceli','Kovacek','+1.352.802.8980','maggio.lila@marks.biz'),(26,5,'Dashawn','Beahan','1-559-592-7674','thompson.marina@hotmail.com'),(27,4,'Tyler','Lynch','+17855352640','alfred86@hettinger.com'),(28,4,'Melissa','Jakubowski','+1 (757) 841-7710','ciara.pfeffer@hotmail.com'),(29,1,'Dariana','Goodwin','715-210-2004','wilkinson.gwendolyn@gmail.com'),(30,3,'Pierce','Brown','+1-386-296-1100','corwin.stefanie@kunze.biz'),(31,3,'Gail','Schuppe','+1-731-795-3168','botsford.santino@terry.biz'),(32,4,'Erik','Ruecker','(423) 449-7334','amina.durgan@moore.info'),(33,3,'Braden','Block','+1-563-634-4695','ernestina.mueller@breitenberg.com'),(34,3,'Desmond','Nitzsche','+1-520-714-1430','jaylon.abernathy@weissnat.com'),(35,2,'Adrienne','Schaefer','+1-234-919-4700','cole.marilie@johns.info'),(36,5,'Kailee','Davis','+1 (413) 382-8200','klind@hotmail.com'),(37,3,'Woodrow','Bartoletti','315.638.2172','alexys.schuster@hotmail.com'),(38,2,'Trevion','Adams','(910) 253-9495','arvid31@zulauf.com'),(39,2,'Elizabeth','Torp','267-615-9471','kohler.leopoldo@collier.org'),(40,3,'Cassie','Greenfelder','+1-920-204-5008','uwyman@yahoo.com'),(41,1,'Maggie','Stracke','1-351-749-4415','kbotsford@yahoo.com'),(42,1,'Angie','Dibbert','+1.502.746.2509','brad.ryan@yahoo.com'),(43,3,'Joanie','Johnston','+1-802-828-4568','karianne15@feil.org'),(44,4,'Olga','Braun','+1.716.873.8308','marcelo45@ullrich.com'),(45,4,'Armando','Schulist','+1-870-525-1842','uconn@hotmail.com'),(46,3,'Mario','Pfannerstill','+1-501-274-5291','onie55@hotmail.com'),(47,4,'Clarabelle','Auer','(813) 307-5565','henderson94@yahoo.com'),(48,3,'Thora','Kuvalis','754.737.6921','samanta.smith@hotmail.com'),(49,2,'Augustus','Auer','+12404221822','mia68@yahoo.com'),(50,3,'Crawford','Torp','+1 (440) 961-8309','eulalia.rosenbaum@labadie.com'),(51,5,'Jessica','Kub','+1-678-856-1944','forrest.hyatt@yahoo.com'),(52,1,'Baylee','Hirthe','574-739-6573','bernie.kemmer@hyatt.com'),(53,3,'Sylvan','Corkery','+13344168101','bradford67@schultz.com'),(54,1,'Jon','Huels','+16515035412','bryan@hotmail.com'),(55,4,'Grant','Harris','1-931-559-4827','beatty.christopher@yahoo.com'),(56,3,'Jettie','Breitenberg','847.907.7773','qfunk@robel.com'),(57,5,'Mack','Okuneva','+19145215039','louisa10@bode.com'),(58,5,'Burley','Langworth','539.739.3839','litzy.littel@yahoo.com'),(59,4,'Mable','Heidenreich','+1-518-293-1658','adriana.murphy@hammes.com'),(60,4,'Celia','Lakin','272-466-9502','mbernhard@lubowitz.org'),(61,3,'Tressie','Walsh','(872) 391-4093','quincy67@hotmail.com'),(62,2,'Johnnie','Koch','+1-504-241-8505','koelpin.elta@yahoo.com'),(63,3,'Ronny','O\'Connell','+1 (408) 419-2658','ebergnaum@gmail.com'),(64,4,'Fabian','Zemlak','+1-612-579-8479','walker.tomasa@walter.com'),(65,4,'Kenna','Emard','1-757-903-4081','bbuckridge@hansen.com'),(66,3,'Neha','Stoltenberg','(347) 580-6497','runolfsdottir.turner@yahoo.com'),(67,1,'Evangeline','Walter','+1 (432) 901-4386','barton.kuhic@stehr.com'),(68,1,'Joany','Koelpin','(617) 491-7866','ihill@herzog.org'),(69,4,'Santiago','Schmitt','209.782.6822','hollis03@gmail.com'),(70,3,'Mabel','Casper','1-347-402-9954','djohnson@gmail.com'),(71,4,'Gregory','Schinner','+1 (919) 698-8323','fweimann@schneider.com'),(72,5,'Mackenzie','Borer','(760) 992-5442','hfisher@gmail.com'),(73,2,'Zack','Upton','1-573-588-5522','triston37@wunsch.info'),(74,1,'Madyson','Romaguera','+1-678-428-7654','rosanna.ziemann@frami.info'),(75,2,'Marina','Carroll','1-972-764-8605','joannie25@kris.com'),(76,1,'Ray','Hyatt','+1-269-323-3082','gwill@hotmail.com'),(77,1,'Nyasia','Kling','631.225.5509','harber.jasper@gmail.com'),(78,2,'Toy','Doyle','+1 (657) 472-4692','aurelia.toy@kutch.biz'),(79,1,'Princess','Pagac','1-281-695-3767','macie64@kessler.biz'),(80,1,'Joel','Grady','+15204100737','gmarquardt@yahoo.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-14 16:58:17
