-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db_articles
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1

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
-- Table structure for table `article_author`
--

DROP TABLE IF EXISTS `article_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_name` varchar(100) NOT NULL,
  `author_desc` longtext,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `author_avatar` varchar(100),
  PRIMARY KEY (`id`),
  KEY `article_author_10261f91` (`author_name`),
  KEY `article_author_created_date_d87637e1_uniq` (`created_date`),
  KEY `article_author_updated_date_a392c5fe_uniq` (`updated_date`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_author`
--

LOCK TABLES `article_author` WRITE;
/*!40000 ALTER TABLE `article_author` DISABLE KEYS */;
INSERT INTO `article_author` VALUES (1,'Dan Christy','Famous Danish Traveller','2016-04-21 00:09:25','2016-04-21 13:07:30','/home/binnyabraham/workspace/store/static/upload/avatar/avatar6_bFZqlcP.jpeg'),(2,'Katie Rudolph','Australian traveller','2016-04-21 00:09:53','2016-04-21 12:53:10','/home/binnyabraham/workspace/store/static/upload/avatar/avatar3.jpeg'),(3,'Ramesh Menon','Indian Travel Blogger','2016-04-21 00:10:30','2016-04-21 13:07:05','/home/binnyabraham/workspace/store/static/upload/avatar/avatar5_GROIh0e.jpeg'),(4,'Dilharo Fernado','Srilankan Blogger','2016-04-21 00:10:55','2016-04-21 13:06:43','/home/binnyabraham/workspace/store/static/upload/avatar/avatar4_8VuiqmA.jpeg'),(5,'Bharath Das','Indian Tourist guide','2016-04-21 00:11:31','2016-04-21 13:06:01','/home/binnyabraham/workspace/store/static/upload/avatar/avatar2_zAgK4hn.jpeg'),(6,'Sayed Hussain','Arab Traveller','2016-04-21 00:11:58','2016-04-21 13:05:25','/home/binnyabraham/workspace/store/static/upload/avatar/avatar1_riAyVA3.jpeg');
/*!40000 ALTER TABLE `article_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_category`
--

DROP TABLE IF EXISTS `article_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  `category_desc` longtext,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `category_active` tinyint(1) NOT NULL,
  `category_image` varchar(100),
  PRIMARY KEY (`id`),
  KEY `article_category_92fa0375` (`category_name`),
  KEY `article_category_created_date_bdf85eff_uniq` (`created_date`),
  KEY `article_category_updated_date_eedbacbf_uniq` (`updated_date`),
  KEY `article_category_b466e6a6` (`category_active`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_category`
--

LOCK TABLES `article_category` WRITE;
/*!40000 ALTER TABLE `article_category` DISABLE KEYS */;
INSERT INTO `article_category` VALUES (2,'Adventure','Adventure and Wild related Category','2016-04-21 00:15:18','2016-04-22 07:41:10',1,'/home/binnyabraham/workspace/store/static/upload/category/adv_hero2_MmqvF6j.jpg'),(3,'Honeymoon','Honeymoon and couple related category','2016-04-21 00:15:38','2016-04-22 07:37:37',1,'/home/binnyabraham/workspace/store/static/upload/category/honey_hero1_NRxgVfj.jpeg'),(4,'Family','Family Tour Packages','2016-04-21 00:15:55','2016-04-22 07:37:11',1,'/home/binnyabraham/workspace/store/static/upload/category/family_hero1_mslt5LG.jpeg'),(5,'Pilgrimage','Religious Tour Packages','2016-04-21 00:16:11','2016-04-22 07:47:27',1,'/home/binnyabraham/workspace/store/static/upload/category/rel_hero1_mhhPIqF.jpeg'),(6,'Beaches','Beaches Trip','2016-04-21 00:16:32','2016-04-22 07:46:07',1,'/home/binnyabraham/workspace/store/static/upload/category/beaches_hero1_xKJysqo.jpeg');
/*!40000 ALTER TABLE `article_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_contentdetail`
--

DROP TABLE IF EXISTS `article_contentdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_contentdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `pub_date` date NOT NULL,
  `description` longtext NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `article_contentdetail_author_id_9b58a73e_fk_article_author_id` (`author_id`),
  KEY `article_contentdetai_category_id_2f4984c7_fk_article_category_id` (`category_id`),
  KEY `article_contentdetail_d5d3db17` (`title`),
  KEY `article_contentdetail_be8ef0f9` (`pub_date`),
  KEY `article_contentdetail_f33175e6` (`image_id`),
  KEY `article_contentdetail_created_date_8a3cc5d2_uniq` (`created_date`),
  KEY `article_contentdetail_updated_date_71a0550a_uniq` (`updated_date`),
  KEY `article_contentdetail_c76a5e84` (`active`),
  CONSTRAINT `article_contentdetail_author_id_9b58a73e_fk_article_author_id` FOREIGN KEY (`author_id`) REFERENCES `article_author` (`id`),
  CONSTRAINT `article_contentdetail_image_id_04b9e29a_fk_article_imagestore_id` FOREIGN KEY (`image_id`) REFERENCES `article_imagestore` (`id`),
  CONSTRAINT `article_contentdetai_category_id_2f4984c7_fk_article_category_id` FOREIGN KEY (`category_id`) REFERENCES `article_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_contentdetail`
--

LOCK TABLES `article_contentdetail` WRITE;
/*!40000 ALTER TABLE `article_contentdetail` DISABLE KEYS */;
INSERT INTO `article_contentdetail` VALUES (2,'Patagonia : Getting Offline and Camp','2016-04-21','I came to Patagonia to tune out, clear my mind, hike, and learn to camp. I hate camping, though, and can count on one hand the number of nights I’ve spent in a tent. As an insomniac, I much prefer beds, hot water, and flush toilets. Even as a kid, when my friends and I went camping, I never enjoyed the experience — I only went to be with my friends. But I signed up for the Intrepid Patagonia tour (with fellow blogger Hey Nadine, no less!) as a way to ease myself into the experience again.\r\n\r\nAfter a night in Santiago, my tour group flew down to Patagonia, where we geared up for the famous “W Trek” in Torres del Paine National Park. The park, founded in 1959, is home to tons of glaciers, glacial lakes, deep valleys, famous granite mountains, and beautiful pine forests. More than 100,000 people visit each year, making it one of the top destinations in South America. The W Trek is so named because it follows the natural formations of three valleys, thereby forming a W shape. It’s the most popular circuit in the park, as it hits all the major sights: Glacier Grey, the French Valley, and the picture-perfect Torres Towers.\r\n\r\nAs we approached the park on the first day, giant gray mountains rose high above us and a cloudless blue sky stretched to infinity. Everyone on the bus gave a collective gasp. While our guides stopped to get our camping and hiking permits, we piled out for photographs. The crisp air, grass waving in the wind, and sheer mountainsides made me excited to get connected to nature again.\r\n\r\nThe paved road then became dirt, and the bus — lacking any shocks — jostled us like a carnival ride. After a choppy ferry ride, we arrived at Paine Grande camp, our home for the first two nights of four days of hiking. Instead of doing the W in a continuous line, we would hike two portions from this camp, doubling back each night to rest our bones.\r\n\r\nWe dropped our bags and set off on the first trek, to Glaciar Grey, so named for its gray hue produced from light being reflected by the soil and the dirt it smashes and carries as it proceeds down the mountains and into the lakes. Behind us was Lake Pehoe with its deep, crystal blue water. The wind picked up and we came to a lookout point high above Lago Grey. Battling gusts that kept pushing us off balance, we took photos of the glacier before scrambling down from the lookout. After a quick snack among the rocks, we stepped back on the path, and the wind died down as we descended into the pine forest.\r\n\r\nMy last experience setting up a tent, on a trip to Africa, didn’t go well: I couldn’t get my tent poles to arch and often seemed to have one left over. Now, I was hoping for some practice when we got back to camp, so I could reduce my tent-pitching time from 30 confused minutes to something more reasonable. Alas, it was not to be. When we returned to Paine Grande hours later, it turned out the camp handlers had set up the tents for us!','2016-04-21 00:51:37','2016-04-21 13:50:31',1,2,2,1),(3,'Tips for Traveling Iceland in the Spring','2016-04-20','Spring is when Iceland thaws and wakes up from the hibernation of winter. People begin to venture out into the streets and take to the outdoors.  \r\nDays are getting longer, the earth is opening up with a few early blooms.Gone are the heavy winter storms and the dangerous icy roads—instead the temperature is about 40-50 degrees. This is the season to go if you are looking for green hill slopes, fishing, and golfing.\r\nEven though it’s spring, the weather in Iceland is predictably unpredictable. It can quickly go from rain to sun, from comfortable to chilly—so bring layers that you can easily jump in and out of. Bring a windbreaker, jacket, sweater, and long underwear or stockings no matter the forecast!\r\nPick up a lopapeysa, a traditional Icelandic sweater, while you’re here. Pack a good pair of hiking or light trekking boots as most of Iceland’s attractions are in the rugged countryside where walking can be a challenge.\r\nAlthough counterintuitive to the weather trends, pack your swimsuit and a travel towel too—hot springs and hot pots are all the rage in Iceland!','2016-04-22 08:12:28','2016-04-22 15:24:22',6,4,3,1),(4,'A Scenic Journey to Camiguin via Cagayan De Oro','2016-04-14','Camiguin is a beautiful island province that is surrounded by Bohol Sea, Gingoog Bay and Butuan Bay. The Island is host to an active volcano named Mout Hibok-Hibok. Camiguin has five municipalities — Mambajao (capital), Catarman, Sagay, Guinsiliban and Mahinog — and measures approximately 29,000 hectares with a circumferential road measuring 64 kms.\r\nGo Snorkeling and Diving in Camiguin\r\n\r\nThe Jicduf Shoal offers activities related to diving and underwater photography along with an opportunity to see the wonderful aquatic life. It is a suitable place for novice divers. A thirty minute speed boating drive leads to Burias Shoal which can be found near Mantigue Island. The high currents are so strong that experts or adventure divers will be able to taste the salt water. A large number of tuna, jacks, mackerel, surgeons and barracudas can be found in Burias Shoal.\r\n\r\nAnother popular destination in Camiguin Island is Mantigue Island. The island has a sandy beach and mini forest that you can tour within 10 minutes. The deep drop offs on one side and shallow water on the other side of the island make it perfect for diving, snorkeling and swimming. Anthias, damsels and clown fish are some of the tropical fishes found in the molten rocks covered with corals.\r\n\r\nExplore White Island and other White Sand Beaches\r\n\r\nAlso known as Medan Island, White Island is just 2 kilometers off coast of Agoho and Yumbing in Mambajao. The C shaped island and sand bar is blessed with coral sand and the shape varies depending on the ocean tide. The island has no vegetation at all and overnight stay is not possible in the island.','2016-04-22 09:13:45','2016-04-22 09:13:45',2,3,4,1),(5,'The Long and Winding Road to Baler','2016-04-22','Road to Baler\r\n\r\nWhen I learned that we were going to spend the Holy Week on the beach, the destination that came to my mind was Baler.\r\n\r\nI have been captivated by romantic images of big waves crashing against limestone islets, of surfers paddling into humongous loops of waves, and of kids swimming in the sea while the sun rises.\r\n\r\nPerhaps it was the Source Energy that dwells within me that had manifested the dream to go to Baler; for at the last minute, the confirmation to travel to this surfer’s paradise arrived.\r\nTrust Your Instincts and Enjoy the Ride\r\n\r\nMeeting a huge crowd of Filipino holidaymakers in the country’s popular destinations on Holy Week is much expected.\r\n\r\nThese travelers, mostly composed of the working class and their families disperse themselves in Boracay, Baguio, Zambales, Tagaytay, Palawan, Pagudpud, La Union, and Baler, among others.\r\n\r\nThat’s why it came as no surprise when we discovered at the Genesis Cubao Terminal – the bus company that goes directly to Baler – that the last bus trip of 7:30 was moved an hour earlier due to the fast filling number of travelers to Baler.\r\n\r\nThen the suggestion of taking a bus to Cabanatuan City on board 5-Star, and another vehicle to Baler, either a van or a bus, was given to us by the helpful security guard at Genesis.\r\n\r\nSince the 5-Star Bus Terminal was situated before Genesis on the Northbound road of EDSA, we had to take another drive around through the rush-hour’s traffic.\r\n\r\nAt the 5-Star Terminal, we found the bus going to Cabanatuan City via Bulacan. I asked the driver of the bus, operated by CISCO, how long would the trip take and if the trip via SCTEX is shorter.','2016-04-22 09:18:52','2016-04-22 15:24:03',3,6,5,1),(6,'Amarnath yatra: Trek on a pilgrimage','2016-04-22','Imagine a superhero with infinite powers. The only one who knows the path to immortality. He however has to give in to his wife’s wish to know this secret.\r\n\r\nTo keep the secret safe from any eavesdroppers, the superhero chooses a place safely distant from any life.\r\n\r\nEn route, he lets go of all his companions. His ride, the bull at Pahalgam. The moon that adorns his hair at Chandanwari. The snakes around his neck  at Sheshnag. The five basic elements at Panchatarini. His son Ganesh at Mahagunas Top. To finally reach a hidden cave.\r\nThis fascinating story is the legend of Amarnath yatra.\r\n\r\nThe cave where the superhero (Shiva) supposedly narrated the immortality lessons to his wife (Parvati) – the “holy cave” of Amarnath – has become a revered destination for hundreds of thousands of pilgrims.\r\nPreparation for the Amarnath yatra\r\n\r\nWe were looking for a trek in Kashmir. The Amarnath yatra was about to start. Everyone suggested we make use of this opportunity.\r\n\r\nWe are not too religiously inclined. But the prospect of a journey with hundreds of pilgrims and seeing the ice shivling; the world’s most renowned ice stalagmite excited us.\r\n\r\nBy then, we had spent a few weeks in the Kashmir mountains. We did a few day treks in Chatpal and Yusmarg to prepare ourselves for the Amarnath yatra.','2016-04-22 15:06:37','2016-04-22 15:06:37',5,5,6,1);
/*!40000 ALTER TABLE `article_contentdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_imagestore`
--

DROP TABLE IF EXISTS `article_imagestore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_imagestore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_title` varchar(100) NOT NULL,
  `hero_img` varchar(100) DEFAULT NULL,
  `main_img` varchar(100) DEFAULT NULL,
  `next_img` varchar(100) DEFAULT NULL,
  `img_desc` longtext,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `article_imagestore_7a5ab464` (`img_title`),
  KEY `article_imagestore_created_date_a93dc0ad_uniq` (`created_date`),
  KEY `article_imagestore_updated_date_d3c30c75_uniq` (`updated_date`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_imagestore`
--

LOCK TABLES `article_imagestore` WRITE;
/*!40000 ALTER TABLE `article_imagestore` DISABLE KEYS */;
INSERT INTO `article_imagestore` VALUES (2,'Adventure Images','/home/binnyabraham/workspace/store/static/upload/images/adv_hero.jpg','/home/binnyabraham/workspace/store/static/upload/images/adv_long1_21YdF2R.jpeg','/home/binnyabraham/workspace/store/static/upload/images/next1.jpeg','Image related to adventure travel','2016-04-21 00:50:51','2016-04-22 15:09:08'),(3,'family images','/home/binnyabraham/workspace/store/static/upload/images/family_hero1.jpeg','/home/binnyabraham/workspace/store/static/upload/images/family_long1.jpeg','/home/binnyabraham/workspace/store/static/upload/images/next2.jpeg','family details','2016-04-22 08:09:20','2016-04-22 15:08:48'),(4,'Honey moon Images','/home/binnyabraham/workspace/store/static/upload/images/honey_hero1.jpeg','/home/binnyabraham/workspace/store/static/upload/images/honey_long1.jpeg','/home/binnyabraham/workspace/store/static/upload/images/next5.jpeg','Honey moon images','2016-04-22 09:11:49','2016-04-22 15:08:33'),(5,'Beach Images','/home/binnyabraham/workspace/store/static/upload/images/beaches_hero1.jpeg','/home/binnyabraham/workspace/store/static/upload/images/beaches_long1.jpeg','/home/binnyabraham/workspace/store/static/upload/images/next4.jpeg','Beach Images & Photographs','2016-04-22 09:17:43','2016-04-22 15:08:14'),(6,'Pilgrimage Images','/home/binnyabraham/workspace/store/static/upload/images/rel_hero1_0SFZBLO.jpeg','/home/binnyabraham/workspace/store/static/upload/images/religious_long1.jpeg','/home/binnyabraham/workspace/store/static/upload/images/next3.jpeg','Pigrim Travel Destination photos','2016-04-22 15:06:32','2016-04-22 21:32:09');
/*!40000 ALTER TABLE `article_imagestore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add content detail',1,'add_contentdetail'),(2,'Can change content detail',1,'change_contentdetail'),(3,'Can delete content detail',1,'delete_contentdetail'),(4,'Can add image store',2,'add_imagestore'),(5,'Can change image store',2,'change_imagestore'),(6,'Can delete image store',2,'delete_imagestore'),(7,'Can add author',3,'add_author'),(8,'Can change author',3,'change_author'),(9,'Can delete author',3,'delete_author'),(10,'Can add category',4,'add_category'),(11,'Can change category',4,'change_category'),(12,'Can delete category',4,'delete_category'),(13,'Can add log entry',5,'add_logentry'),(14,'Can change log entry',5,'change_logentry'),(15,'Can delete log entry',5,'delete_logentry'),(16,'Can add permission',6,'add_permission'),(17,'Can change permission',6,'change_permission'),(18,'Can delete permission',6,'delete_permission'),(19,'Can add group',7,'add_group'),(20,'Can change group',7,'change_group'),(21,'Can delete group',7,'delete_group'),(22,'Can add user',8,'add_user'),(23,'Can change user',8,'change_user'),(24,'Can delete user',8,'delete_user'),(25,'Can add content type',9,'add_contenttype'),(26,'Can change content type',9,'change_contenttype'),(27,'Can delete content type',9,'delete_contenttype'),(28,'Can add session',10,'add_session'),(29,'Can change session',10,'change_session'),(30,'Can delete session',10,'delete_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$24000$hdlLU1mobt7F$lUF4PN4/3aAiop7ZISDxNVztH5uj+2tvrjVX1kvrhtg=','2016-04-21 00:13:45',1,'admin','','','binny@gmail.com',1,1,'2016-04-21 00:03:36');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2016-04-21 00:09:25','1','Dan Christy',1,'Added.',3,1),(2,'2016-04-21 00:09:53','2','katie Fernandez',1,'Added.',3,1),(3,'2016-04-21 00:10:30','3','Binny Abraham',1,'Added.',3,1),(4,'2016-04-21 00:10:55','4','Dilharo Fernado',1,'Added.',3,1),(5,'2016-04-21 00:11:31','5','Bharath Das',1,'Added.',3,1),(6,'2016-04-21 00:11:58','6','Sayed Hussain',1,'Added.',3,1),(7,'2016-04-21 00:15:18','2','Adventure',1,'Added.',4,1),(8,'2016-04-21 00:15:38','3','Honeymoon',1,'Added.',4,1),(9,'2016-04-21 00:15:55','4','Family',1,'Added.',4,1),(10,'2016-04-21 00:16:11','5','Pilgrimage',1,'Added.',4,1),(11,'2016-04-21 00:16:32','6','Beaches',1,'Added.',4,1),(12,'2016-04-21 00:41:43','1','Sydney Storm',1,'Added.',2,1),(13,'2016-04-21 00:42:01','1','Sydney Storms',1,'Added.',1,1),(14,'2016-04-21 00:48:26','1','Sydney Storms',3,'',1,1),(15,'2016-04-21 00:48:38','1','Sydney Storm',3,'',2,1),(16,'2016-04-21 00:50:51','2','Adventure Images',1,'Added.',2,1),(17,'2016-04-21 00:51:37','2','Patagonia: Thoughts on Getting Offline and Trying to Camp',1,'Added.',1,1),(18,'2016-04-21 09:42:49','2','Adventure Images',2,'No fields changed.',2,1),(19,'2016-04-21 11:45:13','2','Adventure Images',2,'Changed hero_img, main_img and next_img.',2,1),(20,'2016-04-21 11:45:39','2','Adventure Images',2,'Changed hero_img, main_img and next_img.',2,1),(21,'2016-04-21 12:02:19','2','Adventure Images',2,'Changed hero_img, main_img and next_img.',2,1),(22,'2016-04-21 12:18:59','2','Adventure Images',2,'Changed hero_img, main_img and next_img.',2,1),(23,'2016-04-21 12:19:38','2','Adventure Images',2,'Changed hero_img, main_img and next_img.',2,1),(24,'2016-04-21 12:29:21','2','Katie Rudolph',2,'Changed author_name.',3,1),(25,'2016-04-21 12:37:43','2','Adventure Images',2,'Changed hero_img, main_img and next_img.',2,1),(26,'2016-04-21 12:38:27','2','Adventure Images',2,'Changed hero_img, main_img and next_img.',2,1),(27,'2016-04-21 12:50:26','6','Sayed Hussain',2,'Changed author_avatar.',3,1),(28,'2016-04-21 12:50:48','5','Bharath Das',2,'Changed author_avatar.',3,1),(29,'2016-04-21 12:51:14','4','Dilharo Fernado',2,'Changed author_avatar.',3,1),(30,'2016-04-21 12:52:57','3','Ramesh Menon',2,'Changed author_name and author_avatar.',3,1),(31,'2016-04-21 12:53:10','2','Katie Rudolph',2,'Changed author_avatar.',3,1),(32,'2016-04-21 12:54:42','1','Dan Christy',2,'Changed author_avatar.',3,1),(33,'2016-04-21 13:02:43','6','Sayed Hussain',2,'No fields changed.',3,1),(34,'2016-04-21 13:02:53','6','Sayed Hussain',2,'Changed author_avatar.',3,1),(35,'2016-04-21 13:03:14','6','Sayed Hussain',2,'Changed author_avatar.',3,1),(36,'2016-04-21 13:05:10','6','Sayed Hussain',2,'Changed author_avatar.',3,1),(37,'2016-04-21 13:05:13','6','Sayed Hussain',2,'No fields changed.',3,1),(38,'2016-04-21 13:05:25','6','Sayed Hussain',2,'Changed author_avatar.',3,1),(39,'2016-04-21 13:05:53','5','Bharath Das',2,'Changed author_avatar.',3,1),(40,'2016-04-21 13:06:01','5','Bharath Das',2,'Changed author_avatar.',3,1),(41,'2016-04-21 13:06:08','4','Dilharo Fernado',2,'Changed author_avatar.',3,1),(42,'2016-04-21 13:06:32','4','Dilharo Fernado',2,'Changed author_avatar.',3,1),(43,'2016-04-21 13:06:43','4','Dilharo Fernado',2,'No fields changed.',3,1),(44,'2016-04-21 13:06:52','3','Ramesh Menon',2,'Changed author_avatar.',3,1),(45,'2016-04-21 13:07:03','3','Ramesh Menon',2,'Changed author_avatar.',3,1),(46,'2016-04-21 13:07:05','3','Ramesh Menon',2,'No fields changed.',3,1),(47,'2016-04-21 13:07:13','1','Dan Christy',2,'Changed author_avatar.',3,1),(48,'2016-04-21 13:07:30','1','Dan Christy',2,'Changed author_avatar.',3,1),(49,'2016-04-21 13:12:30','2','Adventure Images',2,'Changed hero_img, main_img and next_img.',2,1),(50,'2016-04-21 13:12:46','2','Adventure Images',2,'Changed hero_img, main_img and next_img.',2,1),(51,'2016-04-21 13:18:23','2','Getting Offline and Trying to Camp',2,'Changed title.',1,1),(52,'2016-04-21 13:19:42','2','Patagonia : Getting Offline and Trying to Camp',2,'Changed title.',1,1),(53,'2016-04-21 13:50:31','2','Patagonia : Getting Offline and Camp',2,'Changed title.',1,1),(54,'2016-04-22 07:26:51','6','Beaches',2,'Changed category_image.',4,1),(55,'2016-04-22 07:26:59','6','Beaches',2,'No fields changed.',4,1),(56,'2016-04-22 07:27:11','6','Beaches',2,'Changed category_image.',4,1),(57,'2016-04-22 07:27:44','5','Pilgrimage',2,'Changed category_image.',4,1),(58,'2016-04-22 07:28:12','5','Pilgrimage',2,'Changed category_image.',4,1),(59,'2016-04-22 07:28:23','5','Pilgrimage',2,'Changed category_image.',4,1),(60,'2016-04-22 07:35:03','4','Family',2,'Changed category_image.',4,1),(61,'2016-04-22 07:37:02','4','Family',2,'Changed category_image.',4,1),(62,'2016-04-22 07:37:11','4','Family',2,'Changed category_image.',4,1),(63,'2016-04-22 07:37:26','3','Honeymoon',2,'Changed category_image.',4,1),(64,'2016-04-22 07:37:37','3','Honeymoon',2,'Changed category_image.',4,1),(65,'2016-04-22 07:39:09','2','Adventure',2,'Changed category_image.',4,1),(66,'2016-04-22 07:39:23','2','Adventure',2,'Changed category_image.',4,1),(67,'2016-04-22 07:39:35','2','Adventure',2,'Changed category_image.',4,1),(68,'2016-04-22 07:39:46','2','Adventure',2,'Changed category_image.',4,1),(69,'2016-04-22 07:40:08','2','Adventure',2,'Changed category_image.',4,1),(70,'2016-04-22 07:41:10','2','Adventure',2,'Changed category_image.',4,1),(71,'2016-04-22 07:42:12','6','Beaches',2,'Changed category_image.',4,1),(72,'2016-04-22 07:42:24','6','Beaches',2,'Changed category_image.',4,1),(73,'2016-04-22 07:45:58','6','Beaches',2,'Changed category_image.',4,1),(74,'2016-04-22 07:46:07','6','Beaches',2,'Changed category_image.',4,1),(75,'2016-04-22 07:47:16','5','Pilgrimage',2,'Changed category_image.',4,1),(76,'2016-04-22 07:47:27','5','Pilgrimage',2,'Changed category_image.',4,1),(77,'2016-04-22 08:09:20','3','family images',1,'Added.',2,1),(78,'2016-04-22 08:12:28','3','Tips for Traveling Iceland in the Spring',1,'Added.',1,1),(79,'2016-04-22 09:11:49','4','Honey moon Images',1,'Added.',2,1),(80,'2016-04-22 09:13:45','4','A Scenic Journey to Camiguin via Cagayan De Oro',1,'Added.',1,1),(81,'2016-04-22 09:17:43','5','Beach Images',1,'Added.',2,1),(82,'2016-04-22 09:18:52','5','The Long and Winding Road to Baler',1,'Added.',1,1),(83,'2016-04-22 15:06:32','6','Pilgrimage Images',1,'Added.',2,1),(84,'2016-04-22 15:06:37','6','Amarnath yatra: Trek on a pilgrimage',1,'Added.',1,1),(85,'2016-04-22 15:08:14','5','Beach Images',2,'Changed next_img.',2,1),(86,'2016-04-22 15:08:33','4','Honey moon Images',2,'Changed next_img.',2,1),(87,'2016-04-22 15:08:48','3','family images',2,'Changed next_img.',2,1),(88,'2016-04-22 15:09:08','2','Adventure Images',2,'Changed next_img.',2,1),(89,'2016-04-22 15:24:03','5','The Long and Winding Road to Baler',2,'Changed author.',1,1),(90,'2016-04-22 15:24:22','3','Tips for Traveling Iceland in the Spring',2,'Changed author.',1,1),(91,'2016-04-22 21:31:20','6','Pilgrimage Images',2,'Changed hero_img.',2,1),(92,'2016-04-22 21:31:30','6','Pilgrimage Images',2,'Changed hero_img.',2,1),(93,'2016-04-22 21:32:09','6','Pilgrimage Images',2,'Changed hero_img.',2,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (5,'admin','logentry'),(3,'article','author'),(4,'article','category'),(1,'article','contentdetail'),(2,'article','imagestore'),(7,'auth','group'),(6,'auth','permission'),(8,'auth','user'),(9,'contenttypes','contenttype'),(10,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-04-21 00:02:38'),(2,'auth','0001_initial','2016-04-21 00:02:41'),(3,'admin','0001_initial','2016-04-21 00:02:41'),(4,'admin','0002_logentry_remove_auto_add','2016-04-21 00:02:42'),(5,'article','0001_initial','2016-04-21 00:02:44'),(6,'contenttypes','0002_remove_content_type_name','2016-04-21 00:02:44'),(7,'auth','0002_alter_permission_name_max_length','2016-04-21 00:02:44'),(8,'auth','0003_alter_user_email_max_length','2016-04-21 00:02:45'),(9,'auth','0004_alter_user_username_opts','2016-04-21 00:02:45'),(10,'auth','0005_alter_user_last_login_null','2016-04-21 00:02:45'),(11,'auth','0006_require_contenttypes_0002','2016-04-21 00:02:45'),(12,'auth','0007_alter_validators_add_error_messages','2016-04-21 00:02:45'),(13,'sessions','0001_initial','2016-04-21 00:02:45'),(14,'article','0002_auto_20160421_0005','2016-04-21 00:06:03'),(15,'article','0003_auto_20160421_0013','2016-04-21 00:13:31'),(16,'article','0004_auto_20160421_0815','2016-04-21 08:15:08'),(17,'article','0005_auto_20160421_0941','2016-04-21 09:41:44'),(18,'article','0006_auto_20160421_0950','2016-04-21 09:50:49'),(19,'article','0007_auto_20160421_1245','2016-04-21 12:46:00'),(20,'article','0008_auto_20160422_0619','2016-04-22 06:19:42'),(21,'article','0009_category_category_image','2016-04-22 07:26:10');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('nf0ct5e6savdyabgftoem7fna2buujqk','OTA3ZjRhMWNmZjBjYzcwOGY5MTA4MmZhNjY0MDExOGZmYWZiY2RkNjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg1NmJhNzdjODU0ZmY0MTBmZjE5N2YxYTdjY2ViMGZiZjNlMmEyM2MiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-05-05 00:13:45');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-23  1:41:12
