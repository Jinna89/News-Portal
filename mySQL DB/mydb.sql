-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 04, 2026 at 04:39 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Politics'),
(2, 'Business'),
(3, 'Technology'),
(4, 'Health'),
(5, 'Entertainment'),
(6, 'Sports'),
(7, 'Education'),
(8, 'Environment'),
(9, 'Travel'),
(10, 'Lifestyle');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `postID` int(11) NOT NULL,
  `descriptions` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `userID`, `postID`, `descriptions`) VALUES
(58, 1, 62, 'government has approved ');

-- --------------------------------------------------------

--
-- Table structure for table `news_list`
--

CREATE TABLE `news_list` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `short_des` varchar(400) NOT NULL,
  `img1` varchar(300) NOT NULL,
  `img2` varchar(300) NOT NULL,
  `img3` varchar(300) NOT NULL,
  `img4` varchar(300) NOT NULL,
  `keywords` varchar(300) NOT NULL,
  `full_des` text NOT NULL,
  `catID` int(11) NOT NULL,
  `authId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_list`
--

INSERT INTO `news_list` (`id`, `title`, `short_des`, `img1`, `img2`, `img3`, `img4`, `keywords`, `full_des`, `catID`, `authId`, `createdAt`, `updatedAt`, `type`) VALUES
(1, 'Political Shift Expected in Upcoming Election', 'A major political realignment may unfold as parties prepare for national elections, insiders say.', 'https://images.unsplash.com/photo-1529107386315-e1a2ed48a620?q=80&w=2340&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'https://picsum.photos/id/1012/600/400', 'https://picsum.photos/id/1013/600/400', 'https://picsum.photos/id/1014/600/400', 'politics,election,breaking,news', '<h3>Election Insights</h3><p>The upcoming election is expected to mark a significant shift in national leadership. Analysts argue that voter sentiment is rapidly changing alongside economic challenges and public dissatisfaction.</p><p>Political experts believe new alliances could strongly influence the outcome. Citizens express both anticipation and concern as campaigns intensify.</p>', 1, 1, '2025-11-14 09:35:08', '2025-11-14 09:35:08', 'Slider'),
(2, 'Business Leaders Predict Stronger Global Market Recovery', 'Experts believe that the global market will see a steady recovery driven by technology and renewed investments.', 'https://picsum.photos/id/1021/600/400', 'https://picsum.photos/id/1022/600/400', 'https://picsum.photos/id/1023/600/400', 'https://picsum.photos/id/1024/600/400', 'business,market,finance,economy', '<h3>Market Outlook</h3><p>Business leaders around the world forecast a positive economic rebound, supported by increased investment in technology and infrastructure.</p><p>Industry reports suggest the momentum will accelerate as inflation stabilizes and supply chains normalize.</p>', 2, 1, '2025-11-14 09:35:08', '2025-11-14 09:35:08', 'Featured'),
(4, 'Health Experts Warn of Seasonal Flu Spike', 'Medical authorities caution about a sudden rise in influenza cases as temperatures change.', 'https://picsum.photos/id/1041/600/400', 'https://picsum.photos/id/1042/600/400', 'https://picsum.photos/id/1043/600/400', 'https://picsum.photos/id/1044/600/400', 'health,flu,medical,seasonal', '<h3>Health Advisory</h3><p>Hospitals have reported a sharp increase in flu cases, prompting health officials to advise early vaccination.</p><p>Doctors emphasize the importance of hygiene practices and staying alert to symptoms.</p>', 4, 1, '2025-11-14 09:35:08', '2025-11-14 09:35:08', 'Slider'),
(5, 'Film Industry Celebrates Record-Breaking Releases', 'Several major productions have surpassed global expectations, bringing new energy to the entertainment sector.', 'https://picsum.photos/id/1051/600/400', 'https://picsum.photos/id/1052/600/400', 'https://picsum.photos/id/1053/600/400', 'https://picsum.photos/id/1054/600/400', 'entertainment,movies,boxoffice,celebrity', '<h3>Cinema Highlights</h3><p>The global box office has reached new milestones thanks to a series of highly anticipated film releases. Critics praise both storytelling and technological advancements in modern filmmaking.</p><p>Studios are preparing for even more innovative projects next year.</p>', 5, 1, '2025-11-14 09:35:08', '2025-11-14 09:35:08', 'Featured'),
(6, 'National Team Prepares for International Sports Tournament', 'Coaches intensify training as athletes gear up for their biggest challenge this year.', 'https://picsum.photos/id/1061/600/400', 'https://picsum.photos/id/1062/600/400', 'https://picsum.photos/id/1063/600/400', 'https://picsum.photos/id/1064/600/400', 'sports,tournament,team,international', '<h3>Sports Preparations</h3><p>The national team has entered the final stage of training ahead of a major international championship. Coaches report strong discipline and determination from players.</p><p>Fans express growing excitement as match dates approach.</p>', 6, 1, '2025-11-14 09:35:08', '2025-11-14 09:35:08', ''),
(7, 'Education Ministry Introduces New Digital Learning Tools', 'The government announces a new set of digital platforms aimed at modernizing education.', 'https://picsum.photos/id/1071/600/400', 'https://picsum.photos/id/1072/600/400', 'https://picsum.photos/id/1073/600/400', 'https://picsum.photos/id/1074/600/400', 'education,digital,learning,students', '<h3>Digital Learning</h3><p>The Ministry of Education has rolled out a suite of online learning tools designed to enhance classroom engagement and accessibility.</p><p>Teachers welcome the move, saying it will help bridge the technology gap.</p>', 7, 1, '2025-11-14 09:35:08', '2025-11-14 09:35:08', ''),
(8, 'Environmental Groups Raise Alarm Over Deforestation', 'New reports indicate rapid deforestation in several key regions despite conservation efforts.', 'https://picsum.photos/id/1081/600/400', 'https://picsum.photos/id/1082/600/400', 'https://picsum.photos/id/1083/600/400', 'https://picsum.photos/id/1084/600/400', 'environment,forest,climate,awareness', '<h3>Climate Concerns</h3><p>Environmental organizations have expressed deep concern over accelerated deforestation rates. Satellite images reveal significant forest loss in areas previously considered protected.</p><p>Experts urge stronger policy enforcement to prevent irreversible impact.</p>', 8, 1, '2025-11-14 09:35:08', '2025-11-14 09:35:08', 'Featured'),
(9, 'Khaleda Zia: Slain leader\'s widow who went on to lead Bangladesh', 'Khaleda Zia, who has died at the age of 80, was Bangladesh\'s first female prime minister.', 'https://ichef.bbci.co.uk/news/1536/cpsprodpb/e2b8/live/fba7ce90-e548-11f0-b627-ab7e40138496.jpg.webp', 'https://picsum.photos/id/1082/600/400', 'https://picsum.photos/id/1083/600/400', 'https://picsum.photos/id/1084/600/400', 'environment,forest,climate,awareness', 'Khaleda Zia, who has died at the age of 80, was Bangladesh\'s first female prime minister.\r\n\r\nShe was once described as a \"shy housewife\" to her husband Ziaur Rahman, a leading figure in the country\'s struggle for independence who became the president in 1977.\r\n\r\nBut following her husband\'s assassination in 1981, Zia rose to lead his Bangladesh Nationalist Party (BNP) and served two terms as prime minister - first in the 1990s and then in the early 2000s.\r\n\r\nHer tumultuous public life did not end after her premiership. She was later convicted for corruption and spent years in prison, but was acquitted after a 2024 uprising that saw her long-time rival, Sheikh Hasina, swept from power.', 1, 1, '2026-01-03 09:35:08', '2026-01-03 09:35:08', 'Popular'),
(10, 'Is \'seat negotiation\' without alliance a \'secret\' strategy of Jamaat?', 'Jamaat-e-Islami has announced that it will scrap its plan to form an \'electoral alliance\' with like-minded parties and instead reach an agreement based on electoral seats', 'https://ichef.bbci.co.uk/ace/ws/800/cpsprodpb/a04a/live/ce6a4ad0-ba5e-11f0-995c-3bd371294616.jpg.webp', 'https://picsum.photos/id/1082/600/400', 'https://picsum.photos/id/1083/600/400', 'https://picsum.photos/id/1084/600/400', 'environment,forest,climate,awareness', '<h3>Jamaat-e-Islami has announced that it will scrap its plan to form an \'electoral alliance\' with like-minded parties and instead reach an agreement based on electoral seats.</h3> <br>\r\n\r\nAfter more than a year of trying to form an alliance with like-minded parties for the upcoming national parliamentary elections in Bangladesh, the party\'s announcement of a seat agreement has sparked new discussions in political circles.\r\n\r\nIn particular, many are questioning whether this is a \'special\' or \'secret strategy\'.\r\n\r\nSome believe that the party has adopted such a strategy so that the election can be perceived as participatory by the people through the participation of more parties.\r\n\r\nAccording to them, since BNP has also announced its party candidate list, keeping specific seats for like-minded people, now Jamaat is also going to follow the same path.', 1, 1, '2026-01-03 10:35:08', '2026-01-03 10:35:08', 'Slider'),
(61, 'Govt Launches New Digital ID Program', 'Citizens will receive secure digital IDs for accessing government services.', 'https://cdn.pixabay.com/photo/2018/05/18/12/27/white-house-3411074_1280.jpg', 'img/digitalid2.jpg', 'img/digitalid3.jpg', 'img/digitalid4.jpg', 'digital ID, government, services', 'The Ministry of ICT announced a nationwide rollout of digital identification cards to streamline access to public services...', 1, 1, '2025-11-09 18:05:01', '2025-11-09 18:05:01', 'Popular'),
(62, 'Dhaka Metro Expansion Approved', 'New metro lines will connect key areas across the capital.', 'http://localhost:3000/images/1d.jpg', 'img/metro2.jpg', 'img/metro3.jpg', 'img/metro4.jpg', 'metro, transport, Dhaka', 'The government has approved the expansion of Dhaka Metro Rail to reduce traffic congestion and improve connectivity...', 2, 2, '2025-11-09 18:05:01', '2025-11-09 18:05:01', 'Popular'),
(64, 'New Dengue Prevention Campaign Begins', 'Health ministry launches awareness drive amid rising cases.', 'https://cdn.pixabay.com/photo/2013/11/20/12/18/mosquito-213805_1280.jpg', 'img/dengue2.jpg', 'img/dengue3.jpg', 'img/dengue4.jpg', 'dengue, health, awareness', 'Officials are distributing mosquito nets and conducting public seminars to combat the spread of dengue fever...', 4, 4, '2025-11-09 18:05:01', '2025-11-09 18:05:01', 'general'),
(65, 'Bangladeshi Film Wins International Award', 'Local director honored at Cannes for debut feature.', 'https://cdn.pixabay.com/photo/2017/09/30/10/11/camera-2801675_1280.jpg', 'img/filmaward2.jpg', 'img/filmaward3.jpg', 'img/filmaward4.jpg', 'film, award, Bangladesh', 'The film explores rural life and resilience, earning praise for its storytelling and cinematography...', 5, 5, '2025-11-09 18:05:01', '2025-11-09 18:05:01', 'general'),
(66, 'Budget Allocates More Funds for Education', 'Primary and secondary schools to receive increased support.', 'https://cdn.pixabay.com/photo/2018/09/11/19/49/education-3670453_1280.jpg', 'img/education2.jpg', 'img/education3.jpg', 'img/education4.jpg', 'budget, education, schools', 'The Finance Minister announced a 15% increase in education funding, focusing on infrastructure and teacher training...', 1, 2, '2025-11-09 18:05:01', '2025-11-09 18:05:01', 'general'),
(67, 'Startup Launches Eco-Friendly Delivery Service', 'Electric bikes and reusable packaging aim to reduce carbon footprint.', 'https://cdn.pixabay.com/photo/2020/05/13/14/30/electric-bike-5167701_1280.jpg', 'img/eco2.jpg', 'img/eco3.jpg', 'img/eco4.jpg', 'startup, delivery, eco', 'GreenGo is revolutionizing urban delivery with sustainable practices and zero-emission vehicles...', 2, 3, '2025-11-09 18:05:01', '2025-11-09 18:05:01', 'general'),
(68, 'NASA Confirms Water on Moon Surface', 'New satellite data reveals frozen water deposits.', 'https://cdn.pixabay.com/photo/2011/12/14/12/11/astronaut-11080_1280.jpg', 'img/moon2.jpg', 'img/moon3.jpg', 'img/moon4.jpg', 'NASA, moon, water', 'Scientists believe the discovery could support future lunar missions and habitation...', 3, 4, '2025-11-09 18:05:01', '2025-11-09 18:05:01', 'general'),
(69, 'Hospitals Upgrade Emergency Facilities', 'New equipment and training programs launched nationwide.', 'https://cdn.pixabay.com/photo/2016/04/19/13/22/hospital-1338585_1280.jpg', 'img/emergency2.jpg', 'img/emergency3.jpg', 'img/emergency4.jpg', 'hospital, emergency, upgrade', 'The Health Ministry has partnered with NGOs to modernize emergency response units across major hospitals...', 4, 5, '2025-11-09 18:05:01', '2025-11-09 18:05:01', 'general'),
(70, 'Music Festival Draws Thousands to Cox’s Bazar', 'Local and international artists perform on the beach stage.', 'https://cdn.pixabay.com/photo/2015/10/23/20/38/studio-1003635_1280.png', 'img/musicfest2.jpg', 'img/musicfest3.jpg', 'img/musicfest4.jpg', 'music, festival, Cox’s Bazar', 'The three-day event featured over 50 performances and highlighted Bangladesh’s growing music scene...', 5, 1, '2025-11-09 18:05:01', '2025-11-09 18:05:01', 'general'),
(71, 'Parliament Debates Climate Action Bill', 'Lawmakers discuss new targets for emissions reduction.', 'https://cdn.pixabay.com/photo/2023/01/18/07/24/dry-7726199_1280.jpg', 'img/climate2.jpg', 'img/climate3.jpg', 'img/climate4.jpg', 'climate, parliament, emissions', 'The proposed bill includes incentives for renewable energy and penalties for polluters...', 1, 2, '2025-11-09 18:05:01', '2025-11-09 18:05:01', 'general'),
(72, 'E-commerce Boom in Rural Areas', 'Online shopping platforms expand delivery zones.', 'https://cdn.pixabay.com/photo/2018/09/21/07/07/e-commerce-3692440_1280.jpg', 'img/ecommerce2.jpg', 'img/ecommerce3.jpg', 'img/ecommerce4.jpg', 'e-commerce, rural, delivery', 'Companies are investing in logistics to reach underserved communities and boost digital inclusion...', 2, 3, '2025-11-09 18:05:01', '2025-11-09 18:05:01', 'general'),
(73, 'University Introduces AI Curriculum', 'Students to learn machine learning and data science from next semester.', 'https://cdn.pixabay.com/photo/2014/05/17/17/45/wild-jack-346410_1280.jpg', 'img/aiuni2.jpg', 'img/aiuni3.jpg', 'img/aiuni4.jpg', 'AI, university, curriculum', 'The new program aims to prepare graduates for careers in emerging tech industries...', 3, 4, '2025-11-09 18:05:01', '2025-11-09 18:05:01', 'general'),
(74, 'Doctors Warn of Antibiotic Overuse', 'Medical experts urge responsible prescription practices.', 'https://cdn.pixabay.com/photo/2019/04/02/09/31/medicine-4097308_1280.jpg', 'img/antibiotic2.jpg', 'img/antibiotic3.jpg', 'img/antibiotic4.jpg', 'health, antibiotics, awareness', 'Overuse of antibiotics is leading to resistant strains and ineffective treatments...', 4, 5, '2025-11-09 18:05:01', '2025-11-09 18:05:01', 'general'),
(75, 'New Streaming Platform Launches in Bangladesh', 'Local content creators get new monetization options.', 'https://cdn.pixabay.com/photo/2019/11/03/01/56/landscape-4597742_1280.jpg', 'img/stream2.jpg', 'img/stream3.jpg', 'img/stream4.jpg', 'streaming, entertainment, content', 'StreamBD offers Bangla-language shows, films, and music with subscription and ad-supported models...', 5, 1, '2025-11-09 18:05:01', '2025-11-09 18:05:01', 'general'),
(76, 'Govt Opens New Tech Park in Sylhet', 'Facility aims to attract foreign investment and create jobs.', 'https://cdn.pixabay.com/photo/2024/03/30/21/24/ferris-wheel-8665568_1280.jpg', 'img/techpark2.jpg', 'img/techpark3.jpg', 'img/techpark4.jpg', 'tech park, Sylhet, investment', 'The park includes co-working spaces, incubators, and training centers for IT professionals...', 1, 2, '2025-11-09 18:05:01', '2025-11-09 18:05:01', 'general'),
(77, 'Mobile Banking Usage Surges', 'More users adopt digital wallets for daily transactions.', 'https://cdn.pixabay.com/photo/2019/06/20/17/59/online-banking-4287719_1280.jpg', 'img/mobilebank2.jpg', 'img/mobilebank3.jpg', 'img/mobilebank4.jpg', 'mobile banking, finance, digital', 'Banks report a 40% increase in mobile transactions compared to last year...', 2, 3, '2025-11-09 18:05:01', '2025-11-09 18:05:01', 'general'),
(78, 'Scientists Develop Low-Cost Water Filter', 'New device could help rural communities access clean water.', 'https://cdn.pixabay.com/photo/2017/03/13/21/41/scientist-2141259_1280.jpg', 'img/waterfilter2.jpg', 'img/waterfilter3.jpg', 'img/waterfilter4.jpg', 'water, filter, rural', 'The filter uses natural materials and can be produced locally at minimal cost...', 3, 4, '2025-11-09 18:05:01', '2025-11-09 18:05:01', 'general'),
(79, 'Health Workers Honored for Pandemic Service', 'Ceremony recognizes frontline heroes across the country.', 'https://cdn.pixabay.com/photo/2021/06/17/06/44/workers-6342901_1280.jpg', 'img/frontline2.jpg', 'img/frontline3.jpg', 'img/frontline4.jpg', 'health, pandemic, recognition', 'Awards were given to doctors, nurses, and volunteers who served tirelessly during COVID-19...', 4, 5, '2025-11-09 18:05:01', '2025-11-09 18:05:01', 'general'),
(80, 'New Drama Series Breaks Viewership Records', 'TV show gains popularity for its bold storytelling.', 'https://yt3.googleusercontent.com/FIkcn50_2F3BBJaSnELgfwSLnETPDy5RIYqGrFaeDAjqweTIZfvzfk-vN0n9ML6VRInYYkMSPg=s900-c-k-c0x00ffffff-no-rj', 'img/drama2.jpg', 'img/drama3.jpg', 'img/drama4.jpg', 'drama, TV, entertainment', 'The series explores social issues and has sparked conversations nationwide...', 5, 1, '2025-11-09 18:05:01', '2025-11-09 18:05:01', 'general'),
(81, 'Government Proposes New Electoral Reforms', 'The Election Commission drafts a new bill for transparent voting.', 'https://cdn.pixabay.com/photo/2019/01/14/13/58/vote-3932253_1280.jpg', 'img/politics2.jpg', 'img/politics3.jpg', 'img/politics4.jpg', 'politics, election, reform', 'The government is introducing an updated electoral framework aimed at ensuring fair participation, stronger voter security, and better monitoring of campaign finance.', 1, 1, '2025-11-09 18:17:06', '2025-11-09 18:17:06', 'general'),
(82, 'Parliament Debates National Security Strategy', 'Lawmakers discuss defense modernization and regional stability.', 'https://cdn.pixabay.com/photo/2014/04/05/14/37/parliament-317085_1280.jpg', 'https://cdn.pixabay.com/photo/2023/12/06/20/00/mountains-8434315_1280.jpg', 'img/security3.jpg', 'img/security4.jpg', 'parliament, defense, strategy', 'During the ongoing parliamentary session, members emphasized improved defense readiness and diplomatic engagement to enhance national security.', 1, 2, '2025-11-09 18:17:06', '2025-11-09 18:17:06', 'general'),
(83, 'Stock Market Reaches Record High in Dhaka', 'Investors optimistic after new fiscal policy announcement.', 'https://cdn.pixabay.com/photo/2012/10/26/01/35/aircraft-63032_1280.jpg', 'img/stock2.jpg', 'img/stock3.jpg', 'img/stock4.jpg', 'business, stocks, economy', 'The Dhaka Stock Exchange (DSE) hit a new milestone as local and foreign investors responded positively to the government’s new business-friendly budget.', 2, 3, '2025-11-09 18:17:06', '2025-11-09 18:17:06', 'general'),
(84, 'Local Startup Secures $5M Investment', 'Fintech company aims to expand mobile payment services nationwide.', 'https://cdn.pixabay.com/photo/2012/10/26/01/35/aircraft-63032_1280.jpg', 'https://cdn.pixabay.com/photo/2023/12/06/20/00/mountains-8434315_1280.jpg', 'img/startup3.jpg', 'img/startup4.jpg', 'startup, fintech, investment', 'PayLink, a Dhaka-based fintech startup, announced that it raised $5 million in Series A funding from global venture capital firms to scale its operations.', 2, 4, '2025-11-09 18:17:06', '2025-11-09 18:17:06', 'general'),
(85, 'University Launches AI Research Center', 'New lab focuses on data science, robotics, and automation.', 'https://cdn.pixabay.com/photo/2023/12/06/20/00/mountains-8434315_1280.jpg', 'img/ai2.jpg', 'https://cdn.pixabay.com/photo/2012/10/26/01/35/aircraft-63032_1280.jpg', 'img/ai4.jpg', 'AI, robotics, data science', 'The center aims to foster collaboration between academia and industry to drive innovation in AI and machine learning technologies in Bangladesh.', 3, 5, '2025-11-09 18:17:06', '2025-11-09 18:17:06', 'general'),
(86, 'Tech Giants Collaborate on Cybersecurity', 'Companies join forces to combat rising online threats.', 'https://cdn.pixabay.com/photo/2019/08/12/13/15/fair-4401225_1280.jpg', 'https://cdn.pixabay.com/photo/2017/06/16/14/35/nectarine-2409370_1280.jpg', 'img/cyber3.jpg', 'img/cyber4.jpg', 'technology, cybersecurity, collaboration', 'Leading software firms have signed a memorandum of understanding to share threat intelligence and enhance global online security.', 3, 1, '2025-11-09 18:17:06', '2025-11-09 18:17:06', 'Popular'),
(87, 'New Vaccination Campaign Targets Rural Areas', 'Health authorities plan nationwide outreach for child immunization.', 'https://cdn.pixabay.com/photo/2017/06/16/14/35/nectarine-2409370_1280.jpg', 'img/health2.jpg', 'img/health3.jpg', 'img/health4.jpg', 'health, vaccination, awareness', 'The Health Ministry announced a special program to deliver vaccines to remote regions using mobile medical teams and refrigerated transport units.', 4, 2, '2025-11-09 18:17:06', '2025-11-09 18:17:06', 'general'),
(88, 'Doctors Warn About Air Pollution Impact', 'Respiratory cases increase during winter months.', 'https://cdn.pixabay.com/photo/2012/10/26/01/35/aircraft-63032_1280.jpg', 'https://cdn.pixabay.com/photo/2023/12/06/20/00/mountains-8434315_1280.jpg', 'img/air3.jpg', 'img/air4.jpg', 'pollution, health, awareness', 'Medical professionals have urged citizens to wear masks and avoid outdoor activities during smog alerts as pollution levels rise.', 4, 3, '2025-11-09 18:17:06', '2025-11-09 18:17:06', 'general'),
(89, 'New Bangla Film Breaks Box Office Records', 'The drama explores family and social values with emotional depth.', 'https://cdn.pixabay.com/photo/2017/06/16/14/35/nectarine-2409370_1280.jpg', 'https://cdn.pixabay.com/photo/2017/06/16/14/35/nectarine-2409370_1280.jpg', 'img/movie3.jpg', 'img/movie4.jpg', 'entertainment, film, Bangladesh', 'The locally produced movie “Jibon Jekhane” grossed over 10 crore BDT in its opening week, becoming one of the highest-earning Bangla films in recent years.', 5, 4, '2025-11-09 18:17:06', '2025-11-09 18:17:06', 'general'),
(90, 'Dhaka Music Fest Returns After Two Years', 'International and local artists to perform at open-air venues.', 'https://cdn.pixabay.com/photo/2016/11/29/12/39/recording-studio-1869560_1280.jpg', 'img/music2.jpg', 'img/music3.jpg', 'img/music4.jpg', 'music, festival, entertainment', 'The Dhaka Music Festival will feature more than 60 performers across multiple genres, promoting Bangladesh’s growing music scene.', 5, 5, '2025-11-09 18:17:06', '2025-11-09 18:17:06', 'general'),
(91, 'Bangladesh Wins ODI Series Against Sri Lanka', 'Tigers secure 2–1 victory in thrilling home series.', 'https://cdn.pixabay.com/photo/2022/02/16/04/15/cricketer-7015982_1280.jpg', 'img/cricket2.jpg', 'img/cricket3.jpg', 'img/cricket4.jpg', 'sports, cricket, Bangladesh', 'Captain Shanto led the team to victory with a remarkable century as Bangladesh sealed the series at Sher-e-Bangla Stadium.', 6, 1, '2025-11-09 18:17:06', '2025-11-09 18:17:06', 'general'),
(92, 'Women’s Football Team Qualifies for Asian Cup', 'Historic win marks new milestone for women’s sports.', 'https://cdn.pixabay.com/photo/2014/10/14/20/24/soccer-488700_1280.jpg', 'img/football2.jpg', 'img/football3.jpg', 'img/football4.jpg', 'football, women, sports', 'Bangladesh’s women’s football team made history by qualifying for the Asian Cup after a stunning 3–0 win over Nepal.', 6, 2, '2025-11-09 18:17:06', '2025-11-09 18:17:06', 'general'),
(93, 'Education Board Digitizes Exam Results', 'Students can now access marksheets online instantly.', 'https://cdn.pixabay.com/photo/2021/10/14/04/14/school-6708064_1280.jpg', 'img/exam2.jpg', 'img/exam3.jpg', 'img/exam4.jpg', 'education, digital, results', 'The Ministry of Education has launched a centralized online portal allowing students to download official results securely.', 7, 3, '2025-11-09 18:17:06', '2025-11-09 18:17:06', 'general'),
(94, 'Scholarship Program Launched for Rural Students', 'New initiative supports underprivileged learners in higher education.', 'https://cdn.pixabay.com/photo/2016/06/24/20/12/graduation-1477769_1280.jpg', 'https://cdn.pixabay.com/photo/2014/10/14/20/24/soccer-488700_1280.jpg', 'img/scholarship3.jpg', 'img/scholarship4.jpg', 'scholarship, students, education', 'Over 10,000 rural students will receive government-backed scholarships covering tuition and living expenses.', 7, 4, '2025-11-09 18:17:06', '2025-11-09 18:17:06', 'general'),
(95, 'Coastal Cleanup Drive Engages Volunteers', 'Thousands join hands to remove waste from beaches.', 'https://cdn.pixabay.com/photo/2014/05/12/18/21/cleanup-342706_1280.jpg', 'img/cleanup2.jpg', 'img/cleanup3.jpg', 'img/cleanup4.jpg', 'environment, cleanup, volunteers', 'Environmental groups and local authorities conducted a coastal cleanup drive across Cox’s Bazar, collecting over 20 tons of waste.', 8, 5, '2025-11-09 18:17:06', '2025-11-09 18:17:06', 'general'),
(96, 'Bangladesh to Ban Single-Use Plastics by 2026', 'New policy aims to reduce plastic pollution nationwide.', 'https://cdn.pixabay.com/photo/2017/08/16/10/54/waste-2647287_1280.jpg', 'img/plastic2.jpg', 'img/plastic3.jpg', 'img/plastic4.jpg', 'plastic, environment, sustainability', 'The Environment Ministry announced plans to phase out single-use plastics and promote biodegradable alternatives.', 8, 1, '2025-11-09 18:17:06', '2025-11-09 18:17:06', 'general'),
(97, 'Tourism Booms in Bandarban During Winter', 'Hotels report record bookings as tourists flock to the hills.', 'https://cdn.pixabay.com/photo/2015/08/31/07/30/istanbul-915076_1280.jpg', 'img/travel2.jpg', 'img/travel3.jpg', 'img/travel4.jpg', 'travel, tourism, Bandarban', 'Local authorities are investing in eco-friendly accommodations and safety infrastructure to support the tourism surge.', 9, 2, '2025-11-09 18:17:06', '2025-11-09 18:17:06', 'general'),
(98, 'Biman Bangladesh Adds New Routes to Singapore', 'National airline expands international operations.', 'https://cdn.pixabay.com/photo/2019/09/05/15/25/airbus-4454338_1280.jpg', 'img/flight2.jpg', 'img/flight3.jpg', 'img/flight4.jpg', 'biman, travel, aviation', 'Biman Bangladesh Airlines announced direct flights to Singapore twice a week to strengthen regional connectivity.', 9, 3, '2025-11-09 18:17:06', '2025-11-09 18:17:06', 'general'),
(99, 'Fitness Trend Grows Among Urban Youth', 'Gyms and yoga studios report rising memberships.', 'https://cdn.pixabay.com/photo/2017/08/07/14/02/man-2604149_1280.jpg', 'img/fitness2.jpg', 'img/fitness3.jpg', 'img/fitness4.jpg', 'lifestyle, fitness, health', 'With growing health awareness, young professionals in Dhaka are increasingly investing in fitness and wellness programs.', 10, 4, '2025-11-09 18:17:06', '2025-11-09 18:17:06', 'general'),
(100, 'Home Gardening Becomes Popular Post-Pandemic', 'Residents embrace sustainable and organic living.', 'https://cdn.pixabay.com/photo/2014/07/05/08/30/lawn-mower-384589_1280.jpg', 'img/garden2.jpg', 'img/garden3.jpg', 'img/garden4.jpg', 'lifestyle, gardening, sustainability', 'Urban households are turning balconies and rooftops into mini gardens, promoting self-sufficiency and cleaner air.', 10, 5, '2025-11-09 18:17:06', '2025-11-09 18:17:06', 'general'),
(101, 'Stock Market Sees Record Growth', 'The national index hit an all-time high amid investor confidence.', 'https://cdn.pixabay.com/photo/2018/01/23/03/39/handshake-3100563_1280.jpg', 'img/business1b.jpg', 'img/business1c.jpg', 'img/business1d.jpg', 'business,stock,finance,economy', 'Investors celebrated a record-breaking week as tech and energy sectors fueled unprecedented stock growth.', 2, 3, '2025-11-10 06:43:45', '2025-11-10 06:43:45', 'general'),
(102, 'Startup Funding Surges in Asia', 'Asian startups raised over $20B in Q3 2025 alone.', 'https://cdn.pixabay.com/photo/2017/09/07/08/54/money-2724241_1280.jpg', 'img/business2b.jpg', 'img/business2c.jpg', 'img/business2d.jpg', 'startup,investment,asia,business', 'Venture capital investment in Asian startups continues to rise, with fintech and AI companies leading the way.', 2, 4, '2025-11-10 06:43:45', '2025-11-10 06:43:45', 'general'),
(103, 'Oil Prices Drop as Demand Slows', 'Global oil prices fell 8% due to reduced industrial activity.', 'https://cdn.pixabay.com/photo/2018/01/16/01/02/cryptocurrency-3085139_1280.jpg', 'img/business3b.jpg', 'img/business3c.jpg', 'img/business3d.jpg', 'oil,market,business,energy', 'A sudden drop in global oil demand led to a decrease in fuel prices, offering temporary relief to transportation sectors.', 2, 5, '2025-11-10 06:43:45', '2025-11-10 06:43:45', 'general'),
(104, 'New Tax Law Benefits Small Businesses', 'Small business owners welcome the revised tax policy.', 'https://cdn.pixabay.com/photo/2017/04/22/12/37/refinery-2251247_1280.jpg', 'img/business4b.jpg', 'img/business4c.jpg', 'img/business4d.jpg', 'tax,business,law,finance', 'The new tax policy includes exemptions for startups and small enterprises, encouraging entrepreneurship.', 2, 1, '2025-11-10 06:43:45', '2025-11-10 06:43:45', 'general'),
(105, 'E-commerce Giants Merge for Global Expansion', 'Two leading online retailers have announced a merger.', 'https://cdn.pixabay.com/photo/2021/08/11/04/11/tesla-6537379_1280.jpg', 'img/business5b.jpg', 'img/business5c.jpg', 'img/business5d.jpg', 'ecommerce,merger,business,global', 'The merger aims to create a $300B global e-commerce powerhouse with operations in over 60 countries.', 2, 2, '2025-11-10 06:43:45', '2025-11-10 06:43:45', 'general'),
(106, 'Inflation Rate Drops for Third Consecutive Month', 'Experts predict a stable economy for 2026.', 'https://cdn.pixabay.com/photo/2022/11/06/14/10/calculator-7574111_1280.jpg', 'img/business6b.jpg', 'img/business6c.jpg', 'img/business6d.jpg', 'inflation,business,economy,report', 'The national inflation rate dropped to 4.1%, marking three consecutive months of decline.', 2, 3, '2025-11-10 06:43:45', '2025-11-10 06:43:45', 'general'),
(107, 'Political Shift Expected in Upcoming Election', 'A major political realignment may unfold as parties prepare for national elections, insiders say.', 'http://localhost:3000/images/1.jpg', 'http://localhost:3000/images/2.jpg', 'http://localhost:3000/images/3.jpg', 'http://localhost:3000/images/4.jpg', 'politics,election,breaking,news', '<h3>Election Insights</h3><p>The upcoming election is expected to mark a significant shift in national leadership. Analysts argue that voter sentiment is rapidly changing alongside economic challenges and public dissatisfaction.</p><p>Political experts believe new alliances could strongly influence the outcome. Citizens express both anticipation and concern as campaigns intensify.</p>', 1, 1, '2025-11-14 09:30:59', '2025-11-14 09:30:59', 'Slider'),
(108, 'Business Leaders Predict Stronger Global Market Recovery', 'Experts believe that the global market will see a steady recovery driven by technology and renewed investments.', 'http://localhost:3000/images/2.jpg', 'http://localhost:3000/images/3.jpg', 'http://localhost:3000/images/4.jpg', 'http://localhost:3000/images/1.jpg', 'business,market,finance,economy', '<h3>Market Outlook</h3><p>Business leaders around the world forecast a positive economic rebound, supported by increased investment in technology and infrastructure.</p><p>Industry reports suggest the momentum will accelerate as inflation stabilizes and supply chains normalize.</p>', 2, 1, '2025-11-14 09:30:59', '2025-11-14 09:30:59', 'Featured'),
(110, 'Health Experts Warn of Seasonal Flu Spike', 'Medical authorities caution about a sudden rise in influenza cases as temperatures change.', 'http://localhost:3000/images/4.jpg', 'http://localhost:3000/images/1.jpg', 'http://localhost:3000/images/2.jpg', 'http://localhost:3000/images/3.jpg', 'health,flu,medical,seasonal', '<h3>Health Advisory</h3><p>Hospitals have reported a sharp increase in flu cases, prompting health officials to advise early vaccination.</p><p>Doctors emphasize the importance of hygiene practices and staying alert to symptoms.</p>', 4, 1, '2025-11-14 09:30:59', '2025-11-14 09:30:59', 'Slider'),
(111, 'Film Industry Celebrates Record-Breaking Releases', 'Several major productions have surpassed global expectations, bringing new energy to the entertainment sector.', 'http://localhost:3000/images/1.jpg', 'http://localhost:3000/images/3.jpg', 'http://localhost:3000/images/4.jpg', 'http://localhost:3000/images/2.jpg', 'entertainment,movies,boxoffice,celebrity', '<h3>Cinema Highlights</h3><p>The global box office has reached new milestones thanks to a series of highly anticipated film releases. Critics praise both storytelling and technological advancements in modern filmmaking.</p><p>Studios are preparing for even more innovative projects next year.</p>', 5, 1, '2025-11-14 09:30:59', '2025-11-14 09:30:59', 'Featured'),
(112, 'National Team Prepares for International Sports Tournament', 'Coaches intensify training as athletes gear up for their biggest challenge this year.', 'https://cdn.pixabay.com/photo/2015/04/15/21/06/cricket-724617_1280.jpg', 'http://localhost:3000/images/2.jpg', 'http://localhost:3000/images/1.jpg', 'http://localhost:3000/images/4.jpg', 'sports,tournament,team,international', '<h3>Sports Preparations</h3><p>The national team has entered the final stage of training ahead of a major international championship. Coaches report strong discipline and determination from players.</p><p>Fans express growing excitement as match dates approach.</p>', 6, 1, '2025-11-14 09:30:59', '2025-11-14 09:30:59', 'Popular'),
(113, 'Education Ministry Introduces New Digital Learning Tools', 'The government announces a new set of digital platforms aimed at modernizing education.', 'http://localhost:3000/images/2.jpg', 'http://localhost:3000/images/4.jpg', 'http://localhost:3000/images/3.jpg', 'http://localhost:3000/images/1.jpg', 'education,digital,learning,students', '<h3>Digital Learning</h3><p>The Ministry of Education has rolled out a suite of online learning tools designed to enhance classroom engagement and accessibility.</p><p>Teachers welcome the move, saying it will help bridge the technology gap.</p>', 7, 1, '2025-11-14 09:30:59', '2025-11-14 09:30:59', 'Slider'),
(114, 'Environmental Groups Raise Alarm Over Deforestation', 'New reports indicate rapid deforestation in several key regions despite conservation efforts.', 'http://localhost:3000/images/1.jpg', 'http://localhost:3000/images/4.jpg', 'http://localhost:3000/images/2.jpg', 'http://localhost:3000/images/3.jpg', 'environment,forest,climate,awareness', '<h3>Climate Concerns</h3><p>Environmental organizations have expressed deep concern over accelerated deforestation rates. Satellite images reveal significant forest loss in areas previously considered protected.</p><p>Experts urge stronger policy enforcement to prevent irreversible impact.</p>', 8, 1, '2025-11-14 09:30:59', '2025-11-14 09:30:59', 'Featured'),
(115, 'Travel Demand Surges as Tourism Season Begins', 'Millions prepare for vacations as global tourism rebounds faster than predicted.', 'https://cdn.pixabay.com/photo/2023/04/10/18/22/castle-7914390_1280.jpg', 'http://localhost:3000/images/2.jpg', 'http://localhost:3000/images/1.jpg', 'http://localhost:3000/images/3.jpg', 'travel,tourism,holidays,destinations', '<h3>Tourism Trends</h3><p>Airlines and travel agencies report a rapid increase in bookings, signaling a strong tourism season ahead.</p><p>Popular destinations are preparing for record visitor numbers.</p>', 9, 1, '2025-11-14 09:30:59', '2025-11-14 09:30:59', 'Popular'),
(116, 'Lifestyle Trends Shift Toward Eco-Friendly Living', 'More people are opting for sustainable habits, eco-products, and minimalistic lifestyles.', 'https://cdn.pixabay.com/photo/2015/05/31/13/40/book-791824_1280.jpg', 'http://localhost:3000/images/1.jpg', 'http://localhost:3000/images/3.jpg', 'http://localhost:3000/images/4.jpg', 'lifestyle,eco,sustainable,green', '<h3>Green Lifestyle</h3><p>Surveys show a major shift toward eco-conscious living. Consumers increasingly seek sustainable options in home products, clothing, and food choices.</p><p>Experts say this trend is likely to grow stronger in coming years.</p>', 10, 1, '2025-11-14 09:30:59', '2025-11-14 09:30:59', 'Slider'),
(118, 'Trade Markets Experience Unexpected Boost', 'Stock exchanges report higher activity than anticipated, reflecting investor confidence.', 'http://localhost:3000/images/1.jpg', 'http://localhost:3000/images/4.jpg', 'http://localhost:3000/images/2.jpg', 'http://localhost:3000/images/3.jpg', 'business,market,trade,stocks', '<h3>Economic Report</h3><p>Global markets witnessed a surprising upswing, with several major indices closing higher. Analysts credit strong investor sentiment for the positive trend.</p>', 2, 1, '2025-11-14 09:30:59', '2025-11-14 09:30:59', 'Popular'),
(119, 'Tech Companies Race to Develop Quantum Solutions', 'Quantum computing gains momentum as leading firms invest heavily in research.', 'http://localhost:3000/images/4.jpg', 'http://localhost:3000/images/3.jpg', 'http://localhost:3000/images/2.jpg', 'http://localhost:3000/images/1.jpg', 'technology,quantum,innovation,research', '<h3>Quantum Era</h3><p>Quantum technology is becoming the next major frontier in computing. Companies invest billions to explore its potential applications in security, science, and data processing.</p>', 3, 1, '2025-11-14 09:30:59', '2025-11-14 09:30:59', 'Featured'),
(120, 'Hospitals Expand Emergency Care Facilities', 'A nationwide expansion effort seeks to improve emergency response capabilities.', 'http://localhost:3000/images/3.jpg', 'http://localhost:3000/images/2.jpg', 'http://localhost:3000/images/4.jpg', 'http://localhost:3000/images/1.jpg', 'health,hospitals,emergency,care', '<h3>Healthcare Expansion</h3><p>Newly expanded emergency wings aim to reduce wait times and improve patient outcomes. Medical teams welcome the upgrades, citing improved workflow.</p>', 4, 1, '2025-11-14 09:30:59', '2025-11-14 09:30:59', 'Slider'),
(121, 'New Streaming Series Dominates Global Charts', 'A recently released digital series has taken the world by storm with record-breaking views.', 'http://localhost:3000/images/2.jpg', 'http://localhost:3000/images/3.jpg', 'http://localhost:3000/images/1.jpg', 'http://localhost:3000/images/4.jpg', 'entertainment,series,streaming,media', '<h3>Entertainment Wave</h3><p>The new series has gained massive international attention, marking one of the biggest digital launches this year. Critics highlight strong character development and storytelling.</p>', 5, 1, '2025-11-14 09:30:59', '2025-11-14 09:30:59', 'Popular'),
(122, 'Athletes Break Records in National Championship', 'Several athletes achieve groundbreaking results in an intense competition weekend.', 'http://localhost:3000/images/1.jpg', 'http://localhost:3000/images/2.jpg', 'http://localhost:3000/images/4.jpg', 'http://localhost:3000/images/3.jpg', 'sports,championship,records,athletes', '<h3>Record Breakers</h3><p>The national championship witnessed extraordinary performances, with multiple athletes setting new records. Coaches celebrate the impressive achievements.</p>', 6, 1, '2025-11-14 09:30:59', '2025-11-14 09:30:59', 'Featured'),
(123, 'Schools Add AI-Powered Classrooms Across the Country', 'The new AI classroom expansion aims to modernize learning experiences for students.', 'http://localhost:3000/images/4.jpg', 'http://localhost:3000/images/1.jpg', 'http://localhost:3000/images/3.jpg', 'http://localhost:3000/images/2.jpg', 'education,ai,schools,technology', '<h3>Smart Education</h3><p>AI-powered smart boards and assessment tools are being implemented across hundreds of schools to enhance teaching quality and personalization.</p>', 7, 1, '2025-11-14 09:30:59', '2025-11-14 09:30:59', 'Slider'),
(124, 'Climate Scientists Record Rapid Glacier Melt Rates', 'New climate data shows glaciers melting faster than predicted by earlier models.', 'http://localhost:3000/images/3.jpg', 'http://localhost:3000/images/4.jpg', 'http://localhost:3000/images/2.jpg', 'http://localhost:3000/images/1.jpg', 'environment,climate,glacier,science', '<h3>Climate Alert</h3><p>Scientists warn that accelerated glacier melt could increase sea level risks significantly. Environmental groups call for urgent global cooperation.</p>', 8, 1, '2025-11-14 09:30:59', '2025-11-14 09:30:59', 'Popular'),
(125, 'Popular Tourist Spots Introduce Smart Navigation Systems', 'New digital guides will help tourists explore cities more efficiently.', 'https://cdn.pixabay.com/photo/2019/04/07/07/52/taj-mahal-4109110_1280.jpg', 'http://localhost:3000/images/3.jpg', 'http://localhost:3000/images/2.jpg', 'http://localhost:3000/images/4.jpg', 'travel,smart,technology,guides', '<h3>Travel Innovation</h3><p>Tourist destinations are installing smart navigation kiosks to support visitors with interactive maps and multilingual support.</p>', 9, 1, '2025-11-14 09:30:59', '2025-11-14 09:30:59', 'Featured'),
(126, 'Eco-Friendly Home Designs Gain Massive Popularity', 'Architects report a growing demand for sustainable and energy-efficient homes.', 'https://cdn.pixabay.com/photo/2016/11/18/16/56/book-1835799_1280.jpg', 'http://localhost:3000/images/1.jpg', 'http://localhost:3000/images/4.jpg', 'http://localhost:3000/images/3.jpg', 'lifestyle,eco,homes,design', '<h3>Modern Living</h3><p>Eco-friendly home architecture is becoming mainstream, with homeowners choosing green materials, solar panels, and smart energy management systems.</p>', 10, 1, '2025-11-14 09:30:59', '2025-11-14 09:30:59', 'Slider'),
(127, 'Political Shift Expected in Upcoming Election', 'A major political realignment may unfold as parties prepare for national elections, insiders say.', 'http://localhost:3000/images/1.jpg', 'http://localhost:3000/images/2.jpg', 'http://localhost:3000/images/3.jpg', 'http://localhost:3000/images/4.jpg', 'politics,election,breaking,news', '<h3>Election Insights</h3><p>The upcoming election is expected to mark a significant shift in national leadership. Analysts argue that voter sentiment is rapidly changing alongside economic challenges and public dissatisfaction.</p><p>Political experts believe new alliances could strongly influence the outcome. Citizens express both anticipation and concern as campaigns intensify.</p>', 1, 1, '2025-11-14 09:31:39', '2025-11-14 09:31:39', 'Slider'),
(128, 'Business Leaders Predict Stronger Global Market Recovery', 'Experts believe that the global market will see a steady recovery driven by technology and renewed investments.', 'http://localhost:3000/images/2.jpg', 'http://localhost:3000/images/3.jpg', 'http://localhost:3000/images/4.jpg', 'http://localhost:3000/images/1.jpg', 'business,market,finance,economy', '<h3>Market Outlook</h3><p>Business leaders around the world forecast a positive economic rebound, supported by increased investment in technology and infrastructure.</p><p>Industry reports suggest the momentum will accelerate as inflation stabilizes and supply chains normalize.</p>', 2, 1, '2025-11-14 09:31:39', '2025-11-14 09:31:39', 'Featured'),
(130, 'Health Experts Warn of Seasonal Flu Spike', 'Medical authorities caution about a sudden rise in influenza cases as temperatures change.', 'http://localhost:3000/images/4.jpg', 'http://localhost:3000/images/1.jpg', 'http://localhost:3000/images/2.jpg', 'http://localhost:3000/images/3.jpg', 'health,flu,medical,seasonal', '<h3>Health Advisory</h3><p>Hospitals have reported a sharp increase in flu cases, prompting health officials to advise early vaccination.</p><p>Doctors emphasize the importance of hygiene practices and staying alert to symptoms.</p>', 4, 1, '2025-11-14 09:31:39', '2025-11-14 09:31:39', 'Slider'),
(133, 'Education Ministry Introduces New Digital Learning Tools', 'The government announces a new set of digital platforms aimed at modernizing education.', 'https://cdn.pixabay.com/photo/2016/01/19/01/42/library-1147815_1280.jpg', 'http://localhost:3000/images/4.jpg', 'http://localhost:3000/images/3.jpg', 'http://localhost:3000/images/1.jpg', 'education,digital,learning,students', '<h3>Digital Learning</h3><p>The Ministry of Education has rolled out a suite of online learning tools designed to enhance classroom engagement and accessibility.</p><p>Teachers welcome the move, saying it will help bridge the technology gap.</p>', 7, 1, '2025-11-14 09:31:39', '2025-11-14 09:31:39', 'Slider'),
(134, 'Environmental Groups Raise Alarm Over Deforestation', 'New reports indicate rapid deforestation in several key regions despite conservation efforts.', 'http://localhost:3000/images/1.jpg', 'http://localhost:3000/images/4.jpg', 'http://localhost:3000/images/2.jpg', 'http://localhost:3000/images/3.jpg', 'environment,forest,climate,awareness', '<h3>Climate Concerns</h3><p>Environmental organizations have expressed deep concern over accelerated deforestation rates. Satellite images reveal significant forest loss in areas previously considered protected.</p><p>Experts urge stronger policy enforcement to prevent irreversible impact.</p>', 8, 1, '2025-11-14 09:31:39', '2025-11-14 09:31:39', 'Featured'),
(135, 'Travel Demand Surges as Tourism Season Begins', 'Millions prepare for vacations as global tourism rebounds faster than predicted.', 'http://localhost:3000/images/4.jpg', 'http://localhost:3000/images/2.jpg', 'http://localhost:3000/images/1.jpg', 'http://localhost:3000/images/3.jpg', 'travel,tourism,holidays,destinations', '<h3>Tourism Trends</h3><p>Airlines and travel agencies report a rapid increase in bookings, signaling a strong tourism season ahead.</p><p>Popular destinations are preparing for record visitor numbers.</p>', 9, 1, '2025-11-14 09:31:39', '2025-11-14 09:31:39', 'Popular'),
(136, 'Lifestyle Trends Shift Toward Eco-Friendly Living', 'More people are opting for sustainable habits, eco-products, and minimalistic lifestyles.', 'http://localhost:3000/images/2.jpg', 'http://localhost:3000/images/1.jpg', 'http://localhost:3000/images/3.jpg', 'http://localhost:3000/images/4.jpg', 'lifestyle,eco,sustainable,green', '<h3>Green Lifestyle</h3><p>Surveys show a major shift toward eco-conscious living. Consumers increasingly seek sustainable options in home products, clothing, and food choices.</p><p>Experts say this trend is likely to grow stronger in coming years.</p>', 10, 1, '2025-11-14 09:31:39', '2025-11-14 09:31:39', 'Slider'),
(138, 'Trade Markets Experience Unexpected Boost', 'Stock exchanges report higher activity than anticipated, reflecting investor confidence.', 'http://localhost:3000/images/1.jpg', 'http://localhost:3000/images/4.jpg', 'http://localhost:3000/images/2.jpg', 'http://localhost:3000/images/3.jpg', 'business,market,trade,stocks', '<h3>Economic Report</h3><p>Global markets witnessed a surprising upswing, with several major indices closing higher. Analysts credit strong investor sentiment for the positive trend.</p>', 2, 1, '2025-11-14 09:31:39', '2025-11-14 09:31:39', 'Popular'),
(139, 'Tech Companies Race to Develop Quantum Solutions', 'Quantum computing gains momentum as leading firms invest heavily in research.', 'http://localhost:3000/images/4.jpg', 'http://localhost:3000/images/3.jpg', 'http://localhost:3000/images/2.jpg', 'http://localhost:3000/images/1.jpg', 'technology,quantum,innovation,research', '<h3>Quantum Era</h3><p>Quantum technology is becoming the next major frontier in computing. Companies invest billions to explore its potential applications in security, science, and data processing.</p>', 3, 1, '2025-11-14 09:31:39', '2025-11-14 09:31:39', 'Featured'),
(141, 'New Streaming Series Dominates Global Charts', 'A recently released digital series has taken the world by storm with record-breaking views.', 'http://localhost:3000/images/2.jpg', 'http://localhost:3000/images/3.jpg', 'http://localhost:3000/images/1.jpg', 'http://localhost:3000/images/4.jpg', 'entertainment,series,streaming,media', '<h3>Entertainment Wave</h3><p>The new series has gained massive international attention, marking one of the biggest digital launches this year. Critics highlight strong character development and storytelling.</p>', 5, 1, '2025-11-14 09:31:39', '2025-11-14 09:31:39', 'Popular'),
(142, 'Athletes Break Records in National Championship', 'Several athletes achieve groundbreaking results in an intense competition weekend.', 'http://localhost:3000/images/1.jpg', 'http://localhost:3000/images/2.jpg', 'http://localhost:3000/images/4.jpg', 'http://localhost:3000/images/3.jpg', 'sports,championship,records,athletes', '<h3>Record Breakers</h3><p>The national championship witnessed extraordinary performances, with multiple athletes setting new records. Coaches celebrate the impressive achievements.</p>', 6, 1, '2025-11-14 09:31:39', '2025-11-14 09:31:39', 'Featured'),
(143, 'Schools Add AI-Powered Classrooms Across the Country', 'The new AI classroom expansion aims to modernize learning experiences for students.', 'http://localhost:3000/images/4.jpg', 'http://localhost:3000/images/1.jpg', 'http://localhost:3000/images/3.jpg', 'http://localhost:3000/images/2.jpg', 'education,ai,schools,technology', '<h3>Smart Education</h3><p>AI-powered smart boards and assessment tools are being implemented across hundreds of schools to enhance teaching quality and personalization.</p>', 7, 1, '2025-11-14 09:31:39', '2025-11-14 09:31:39', 'Slider'),
(145, 'Popular Tourist Spots Introduce Smart Navigation Systems', 'New digital guides will help tourists explore cities more efficiently.', 'https://cdn.pixabay.com/photo/2019/06/30/09/31/istanbul-4307665_1280.jpg', 'http://localhost:3000/images/3.jpg', 'http://localhost:3000/images/2.jpg', 'http://localhost:3000/images/4.jpg', 'travel,smart,technology,guides', '<h3>Travel Innovation</h3><p>Tourist destinations are installing smart navigation kiosks to support visitors with interactive maps and multilingual support.</p>', 9, 1, '2025-11-14 09:31:39', '2025-11-14 09:31:39', 'Featured'),
(146, 'Eco-Friendly Home Designs Gain Massive Popularity', 'Architects report a growing demand for sustainable and energy-efficient homes.', 'https://cdn.pixabay.com/photo/2017/08/27/10/16/interior-2685521_1280.jpg', 'http://localhost:3000/images/1.jpg', 'http://localhost:3000/images/4.jpg', 'http://localhost:3000/images/3.jpg', 'lifestyle,eco,homes,design', '<h3>Modern Living</h3><p>Eco-friendly home architecture is becoming mainstream, with homeowners choosing green materials, solar panels, and smart energy management systems.</p>', 10, 1, '2025-11-14 09:31:39', '2025-11-14 09:31:39', 'Slider');

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` int(11) NOT NULL,
  `long_des` longtext NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`id`, `long_des`, `type`) VALUES
(1, 'All editorial content must be fact-checked and sourced from verified outlets before publication.', 'Privacy'),
(2, 'Comments containing hate speech, spam, or personal attacks will be removed without notice.', 'Community'),
(3, 'User data is stored securely and never shared with third parties without explicit consent.', 'Privacy'),
(5, 'Advertisements must be clearly labeled and not interfere with the reading experience.', 'Advertising'),
(7, 'Images used in articles must be properly licensed or credited to their original source.', 'Privacy'),
(8, 'All user-generated content is subject to moderation and may be edited for clarity.', 'Community'),
(9, 'Sensitive topics such as violence or tragedy must be handled with care and context.', 'Privacy'),
(10, 'The portal complies with GDPR and other regional data protection regulations.', 'Privacy');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` int(11) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `youtube` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `about` text NOT NULL,
  `address` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `facebook`, `youtube`, `twitter`, `linkedin`, `about`, `address`, `createdAt`, `updatedAt`) VALUES
(1, 'https://www.facebook.com/jinna.jinna.7509/', 'https://www.youtube.com/@Jinna_89', 'https://x.com/89Jinna', 'https://www.linkedin.com/in/jinna89/', 'I\'m Md Nur Rahman Mazumder Nadim. I\'ve created this dummy NewsPortal site.', 'Dummy Media Complex, Press Club Road, Dhaka 1000, Bangladesh', '2025-11-09 17:08:37', '2025-11-09 17:08:37');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `createdAt`, `updatedAt`) VALUES
(3, 'jinnadim89@gmail.com', '2026-01-04 04:33:19', '2026-01-04 04:33:19'),
(5, '69jinna69@gmail.com', '2026-01-04 04:39:05', '2026-01-04 04:39:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(191) NOT NULL,
  `lastName` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `mobile` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `otp` varchar(191) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `mobile`, `password`, `otp`, `createdAt`, `updatedAt`) VALUES
(1, 'Code With Jinna', 'Nadim', 'abcd@gmail.com', '01879422939', 'xyzabc', '0', '2025-11-09 07:55:28', '2026-01-04 04:40:19'),
(2, 'Jinna', 'Nadim', 'abc@gmail.com', '01879422939', '12345', '0', '2025-11-09 07:55:28', '2025-11-09 09:25:04'),
(3, 'Jinna', 'Nadim', 'jinna.nadim@example.com', '01879422939', 'pass123', '0', '2025-11-09 18:03:23', '2025-11-09 18:03:23'),
(4, 'Rafi', 'Hasan', 'rafi.hasan@example.com', '01711223344', 'secure456', '0', '2025-11-09 18:03:23', '2025-11-09 18:03:23'),
(5, 'Tania', 'Rahman', 'tania.rahman@example.com', '01999887766', 'mypassword', '0', '2025-11-09 18:03:23', '2025-11-09 18:03:23'),
(6, 'Mehedi', 'Islam', 'mehedi.islam@example.com', '01633445566', 'abc123', '0', '2025-11-09 18:03:23', '2025-11-09 18:03:23'),
(7, 'Sadia', 'Khan', 'sadia.khan@example.com', '01555667788', 'qwerty789', '0', '2025-11-09 18:03:23', '2025-11-09 18:03:23'),
(14, 'Jinna', 'Nadim', 'freelancerjinna@gmail.com', '01879422939', 'abcxyz', '0', '2025-12-21 00:43:21', '2026-01-04 04:49:11'),
(15, 'Jinna', 'Nadim', '69Jinna69@gmail.com', '01879422939', 'xyzabc', '0', '2026-01-04 04:41:36', '2026-01-04 04:41:36');

-- --------------------------------------------------------

--
-- Table structure for table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('52ba2d90-ac76-4281-9844-06ec6b92dc34', 'b652d88a16534eb16c4e1490f364871faac2a5576448d2237e3bd1b1602f54ac', '2025-10-22 07:17:38.781', '20251022053426_many_to_many', NULL, NULL, '2025-10-22 07:17:38.646', 1),
('6dc951f0-1ddb-4f44-938c-74279efe72cd', '561ce2f187d13e1b9b6c0c9c9ba2dc8a7b0c2a9e90ad4f8a015beb8e69fc22e1', '2025-10-25 09:59:08.100', '20251025095907_update', NULL, NULL, '2025-10-25 09:59:07.801', 1),
('7443ab1c-af63-4a41-b126-37a24c998afc', 'ababc6e82a0e12f89f96d42b0ae2d7689bd1c207de1683c8f745db51474a3486', '2025-10-22 07:17:38.359', '20251021083831_many_to_many', NULL, NULL, '2025-10-22 07:17:37.981', 1),
('87d6de0b-04fc-40f9-8fca-23a3e858e7fa', '92f62e0cf876258546df42b6c108af6dc39194c420d60fe019b2bf7f738dc0b1', '2025-10-22 07:17:37.981', '20251021082009_one_to_many', NULL, NULL, '2025-10-22 07:17:37.914', 1),
('8830b2b0-ac0f-49ae-874d-5d3822f9c1d3', '18b41cc8e588d2fc1d63fbdd39e77380bb9eabd1b767580e04a0cd4ad837f350', '2025-10-22 07:17:37.820', '20251008064657_number_update', NULL, NULL, '2025-10-22 07:17:37.798', 1),
('946b322b-83c6-4613-8cde-475caf8a7e2d', 'eb458602f7f2442610f61b43b5011ead1b6a658342751619ad2c1840dececb8a', '2025-10-25 09:58:26.321', '20251025095826_delte', NULL, NULL, '2025-10-25 09:58:26.210', 1),
('ae8cba5f-ef5c-4fc2-8df8-a43353438776', 'b3b8d01f063170de118764d956d69ff8694afbe01a45b5f5db98f2d49f4af40a', '2025-10-22 07:17:38.646', '20251022050923_one_to_many', NULL, NULL, '2025-10-22 07:17:38.578', 1),
('baa2089d-1693-4437-8d8f-dbfe0904415b', 'b6d2d5b5b0cf2845619bea28159c57900388d8a94043ab910b6883314cd0a753', '2025-10-22 07:17:37.914', '20251021081301_one_to_one', NULL, NULL, '2025-10-22 07:17:37.820', 1),
('c302d574-818f-4f9f-abd9-b6bd497eab05', 'aa67673a1b47c709cc58c8d9d74f552bed115e7ce3bf6ce00c3f8fa033dd359e', '2025-10-28 09:29:53.882', '20251028092953_news_portal', NULL, NULL, '2025-10-28 09:29:53.437', 1),
('c9e2ecbd-b4e1-4a94-acad-869beda2c6cb', '49269afc80f562d8db5f395150a2b1ec205e0cefc136074895a98dc4c15c40af', '2025-10-23 15:03:40.756', '20251023150340_ecom', NULL, NULL, '2025-10-23 15:03:40.439', 1),
('efa178df-c687-45e6-8a4e-85eb5bd27fae', '6d72d1019d4181ac7d157fe8879808d71141ce15b65b0b405c3ceb0fa8414cde', '2025-10-22 07:17:37.798', '20251008060649_init', NULL, NULL, '2025-10-22 07:17:37.776', 1),
('f8887707-7705-490f-986c-5d4fa82f6cb2', '380e91db6cb294f6d923ad5beb313ee380ed153b2be9dffaec7344cbfd5387b8', '2025-10-22 07:17:38.577', '20251022050256_one_to_one', NULL, NULL, '2025-10-22 07:17:38.360', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_userID_fkey` (`userID`),
  ADD KEY `comments_postID_fkey` (`postID`);

--
-- Indexes for table `news_list`
--
ALTER TABLE `news_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_list_authId_fkey` (`authId`),
  ADD KEY `news_list_catID_fkey` (`catID`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_key` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_key` (`email`);

--
-- Indexes for table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `news_list`
--
ALTER TABLE `news_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_postID_fkey` FOREIGN KEY (`postID`) REFERENCES `news_list` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_userID_fkey` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `news_list`
--
ALTER TABLE `news_list`
  ADD CONSTRAINT `news_list_authId_fkey` FOREIGN KEY (`authId`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `news_list_catID_fkey` FOREIGN KEY (`catID`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
