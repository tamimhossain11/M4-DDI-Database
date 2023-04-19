-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2022 at 05:15 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abc_job_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_tbl`
--

CREATE TABLE `account_tbl` (
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `email` varchar(320) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_tbl`
--

INSERT INTO `account_tbl` (`account_id`, `user_id`, `user_name`, `email`, `password`) VALUES
(1, 1, 'Afnan_Sayed4234', 'afsayed65@hotmail.com', '654654655'),
(2, 2, 'rimaislam98 ', 'rimaislam1@outlook.com', '635346646an94'),
(3, 3, 'gazifr6590', 'gazifariya43@protonmail.com', '3545648noahg'),
(4, 4, 'AngryQueen100 ', 'aqueen98@hotmail.com', 'typhoon6578'),
(5, 12, 'marshalad12', 'mad12@gmail.com', 'Designer');

-- --------------------------------------------------------

--
-- Table structure for table `admin_tbl`
--

CREATE TABLE `admin_tbl` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(200) NOT NULL,
  `admin_email` varchar(320) NOT NULL,
  `admin_password` varchar(256) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_tbl`
--

INSERT INTO `admin_tbl` (`admin_id`, `admin_name`, `admin_email`, `admin_password`, `user_id`) VALUES
(1, 'Shudipto Hasan', 'Khaledkhan32@gmail.com', '112233Sudipto+', 1),
(2, 'Sudipto chanda Niloy', 'sdp32548@gmail.com', 'Dipto12345roxx', 1),
(3, 'Akib Al Tanin', 'Akibaltanin42@gmail.com', 'vuti987654-=+', 1),
(4, 'Masum Ahmed', 'mahmed3215@gmail.com', 'master-masum21356', 1),
(5, 'khan_jamal', 'khanjamal@gmail.com', '021154785', 4);

-- --------------------------------------------------------

--
-- Table structure for table `apply_job_tbl`
--

CREATE TABLE `apply_job_tbl` (
  `apply_job_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `position` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apply_job_tbl`
--

INSERT INTO `apply_job_tbl` (`apply_job_id`, `job_id`, `position`) VALUES
(1, 1, 'web developer'),
(2, 2, 'data engineer'),
(3, 3, 'front end engineer'),
(4, 4, 'back end engineer');

-- --------------------------------------------------------

--
-- Table structure for table `bulk_email_tbl`
--

CREATE TABLE `bulk_email_tbl` (
  `bulk_email_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `bulk_email_type` varchar(320) NOT NULL,
  `bulk_email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bulk_email_tbl`
--

INSERT INTO `bulk_email_tbl` (`bulk_email_id`, `admin_id`, `bulk_email_type`, `bulk_email`) VALUES
(1, 1, 'Promotional ', 'Register with Abc Job portal. To register, fill out the personal details requested on the registration form and submit by clicking on “Sign Up.” An account is automatically created, and the user can create a marketing email campaign.\r\nHere we are offering u something you might like'),
(2, 2, 'Promotional', 'Register with SendPulse. To register, fill out the personal details requested on the registration form and submit by clicking on “Sign Up.” An account is automatically created, and the user can create a marketing email campaign.'),
(3, 3, 'registration', 'Thank you for your registration in ABC job portal here you will find a link use that to give your external details...\r\nThen simply log in...\r\nWelcome to ABC Job portal'),
(4, 4, 'Newsletter', 'Welcome To ABC job portal hope your upcoming days will go well with us...\r\nHere you will find the news latter\r\nKindly please refer this and explain us your choice of interest');

-- --------------------------------------------------------

--
-- Table structure for table `company_tbl`
--

CREATE TABLE `company_tbl` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `website_link` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company_tbl`
--

INSERT INTO `company_tbl` (`company_id`, `company_name`, `location`, `contact`, `website_link`) VALUES
(1, 'Oracle.com', 'Hampson Rever,1234 street lake view park', '+8801716605265', 'https://www.oracle.com'),
(2, 'google.com', 'Lake view park ,$325 road ', '+96340988234734', 'www.google.com'),
(3, 'Unsplash.com', 'Lylen street,23 criest charce ', '+78786565765', 'https://unsplash.com/s/photos/study'),
(4, 'Git Hub', 'river side port cleopetry', '+9875463225', 'https://github.com');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_tbl`
--

CREATE TABLE `jobs_tbl` (
  `job_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `position` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `deadline_of_application` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobs_tbl`
--

INSERT INTO `jobs_tbl` (`job_id`, `company_id`, `user_id`, `position`, `salary`, `deadline_of_application`) VALUES
(1, 1, 1, 'Software developer', 1400, '2022-07-07'),
(2, 2, 2, 'Full stack developer ', 1500, '2022-07-02'),
(3, 3, 3, 'Front end developer', 1100, '2022-07-02'),
(4, 4, 4, 'Back end Developer', 1200, '2022-07-31');

-- --------------------------------------------------------

--
-- Table structure for table `log_in_tbl`
--

CREATE TABLE `log_in_tbl` (
  `log_in_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(128) NOT NULL,
  `email` varchar(320) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log_in_tbl`
--

INSERT INTO `log_in_tbl` (`log_in_id`, `user_id`, `user_name`, `email`, `password`) VALUES
(1, 1, 'afnansayed0145', 'asayed0245126@hmail.com', '3678867465kj'),
(2, 2, 'angryqueen8970', 'aQ@koutlook@com', 'lkkjhg76it5'),
(3, 3, 'gazifar453', 'Gfra0982hmail.com', '3699886jhsghjhs'),
(4, 4, 'rimaislam0987', 'rms@gmail.com', 'jkhjmghfg98'),
(5, 8, 'Felicdad_koppes32', 'fdk1@gmail.com', '1234567');

-- --------------------------------------------------------

--
-- Table structure for table `profile_tbl`
--

CREATE TABLE `profile_tbl` (
  `profile_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `skills` varchar(64) NOT NULL,
  `work_links` varchar(128) NOT NULL,
  `profession` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile_tbl`
--

INSERT INTO `profile_tbl` (`profile_id`, `user_id`, `name`, `email`, `phone`, `skills`, `work_links`, `profession`) VALUES
(1, 1, 'Afnan Sayed', 'Afs@hotmail.com', '+88015698656', 'Designing', 'oracle.com', 'Front end developer'),
(2, 2, 'Rima Islam', 'rms43@hotmail.com', '+987765434', 'Writing', 'google.com', 'Back end developer'),
(3, 3, 'Gazi fariya', 'Fragin@hotmail.com', '+8801567236545', 'Designing', 'google.com', 'Web designer'),
(4, 4, 'Angry Queen', 'angryqueen43@gmail.com', '+00035698', 'Reading', 'Github.com', 'Data Tester'),
(5, 5, 'Big bomb', 'bg0022@gmail.com', '+003265898741', 'Designing', 'Unsplash.com', 'Front end engineer'),
(6, 19, 'Henka Peffer', 'henkapeffer11@gmail.com', '+88015698656', 'Writting', 'microsoft.com', 'Full stack developer');

-- --------------------------------------------------------

--
-- Table structure for table `read_message_tbl`
--

CREATE TABLE `read_message_tbl` (
  `read_message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `msg_title` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `read_message_tbl`
--

INSERT INTO `read_message_tbl` (`read_message_id`, `user_id`, `msg_title`, `text`, `time`) VALUES
(2, 1, 'confidential', 'Hola, comment allez, allez-vous?\r\nSo nice to meet ya\r\nYou say we should go and get a room (no)\r\nIf you wanna turn it on\r\nGo, get a lightbulb, después hablamos\r\nIf you wanna turn it on\r\nGo, get a lighter, después bailamos\r\nOh, un, dos, tres\r\nUn, dos, tres\r\nSi te doy un beso ya estás a mis pies\r\nDime un, dos, tres\r\nUn, dos, tres\r\nLa, la, la, la, la', '08:31:25'),
(3, 2, 'non confidential', 'Hola, comment allez, allez-vous?\r\nSo nice to meet ya\r\nYou say we should go and get a room (no)\r\nIf you wanna turn it on\r\nGo, get a lightbulb, después hablamos\r\nIf you wanna turn it on\r\nGo, get a lighter, después bailamos\r\nOh, un, dos, tres\r\nUn, dos, tres\r\nSi te doy un beso ya estás a mis pies\r\nDime un, dos, tres\r\nUn, dos, tres\r\nLa, la, la, la, la', '16:00:00'),
(4, 3, 'confidential', 'Hola, comment allez, allez-vous?\r\nSo nice to meet ya\r\nYou say we should go and get a room (no)\r\nIf you wanna turn it on\r\nGo, get a lightbulb, después hablamos\r\nIf you wanna turn it on\r\nGo, get a lighter, después bailamos\r\nOh, un, dos, tres\r\nUn, dos, tres\r\nSi te doy un beso ya estás a mis pies\r\nDime un, dos, tres\r\nUn, dos, tres\r\nLa, la, la, la, la', '21:47:18'),
(5, 4, 'non confidential', 'Hola, comment allez, allez-vous?\r\nSo nice to meet ya\r\nYou say we should go and get a room (no)\r\nIf you wanna turn it on\r\nGo, get a lightbulb, después hablamos\r\nIf you wanna turn it on\r\nGo, get a lighter, después bailamos\r\nOh, un, dos, tres\r\nUn, dos, tres\r\nSi te doy un beso ya estás a mis pies\r\nDime un, dos, tres\r\nUn, dos, tres\r\nLa, la, la, la, la', '05:22:09');

-- --------------------------------------------------------

--
-- Table structure for table `registration_form_tbl`
--

CREATE TABLE `registration_form_tbl` (
  `regi_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `birth_day` date NOT NULL,
  `gender` varchar(15) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `country` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration_form_tbl`
--

INSERT INTO `registration_form_tbl` (`regi_id`, `account_id`, `first_name`, `last_name`, `birth_day`, `gender`, `phone`, `country`, `city`) VALUES
(1, 1, 'Tamim', 'Hossain', '2012-07-01', 'Male', '+8801716605', 'Bangladesh', 'Chandpur'),
(2, 2, 'Any', 'One', '2012-07-05', 'Female', '+098765432', 'India', 'punjab'),
(3, 3, 'No ', 'One', '2022-07-01', 'Female', '+896541223655', 'canada', 'Toronto'),
(4, 4, 'Hasaranga', 'Wanindu', '2022-07-01', 'Male', '+056987452', 'Sri Lanka', 'Bandarawela');

-- --------------------------------------------------------

--
-- Table structure for table `search_user_tbl`
--

CREATE TABLE `search_user_tbl` (
  `search_user_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `location` varchar(256) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `search_user_tbl`
--

INSERT INTO `search_user_tbl` (`search_user_id`, `name`, `location`, `user_id`) VALUES
(1, 'Afnan Sayed', 'Dhaka,Bangladesh', 1),
(2, 'Rima Islam', 'Chandpur,Bangladesh', 2),
(3, 'Gazi Fariya', 'Toronto,Canada', 3),
(4, 'Angry Queen', 'Sydney Australia', 4);

-- --------------------------------------------------------

--
-- Table structure for table `send_message_tbl`
--

CREATE TABLE `send_message_tbl` (
  `send_message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `msg_title` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `send_message_tbl`
--

INSERT INTO `send_message_tbl` (`send_message_id`, `user_id`, `msg_title`, `text`, `time`) VALUES
(1, 1, 'confidential', 'I like the way you talk, I like the things you wear\r\nI want your number tattooed on my arm in ink, I swear\r\n\'Cause when the morning comes, I know you won\'t be there\r\nEvery time I turn around, you disappear\r\nI wanna blow your mind, just come with me, I swear\r\nI\'m gonna take you somewhere warm, you know j\'adore la mer\r\n\'Cause when the morning comes, I know you won\'t be there\r\nEvery time I turn around, you disappear', '16:00:00'),
(2, 2, 'non confidential', 'I like the way you talk, I like the things you wear\r\nI want your number tattooed on my arm in ink, I swear\r\n\'Cause when the morning comes, I know you won\'t be there\r\nEvery time I turn around, you disappear\r\nI wanna blow your mind, just come with me, I swear\r\nI\'m gonna take you somewhere warm, you know j\'adore la mer\r\n\'Cause when the morning comes, I know you won\'t be there\r\nEvery time I turn around, you disappear', '12:20:30'),
(3, 3, 'confidential', '\r\nI\'m gonna take you somewhere warm, you know j\'adore la mer\r\n\'Cause when the morning comes, I know you won\'t be there\r\nEvery time I turn around, you disappear', '04:22:54'),
(4, 3, 'non confidential', '\r\nI\'m gonna take you somewhere warm, you know j\'adore la mer\r\n\'Cause when the morning comes, I know you won\'t be there\r\nEvery time I turn around, you disappear', '06:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `update_profile_tbl`
--

CREATE TABLE `update_profile_tbl` (
  `update_profile_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `profession` varchar(256) NOT NULL,
  `user_profile_pic` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `update_profile_tbl`
--

INSERT INTO `update_profile_tbl` (`update_profile_id`, `user_id`, `name`, `email`, `phone`, `profession`, `user_profile_pic`) VALUES
(1, 1, 'Afnan_sayed4234', 'afsayed65@hotmail.com', '017166052565', 'Software_developer', 0xffd8ffe000104a46494600010100000100010000ffdb0084000a0708161615181616161818181a1c181a1a1c191a1c1a1e1f1f1c1e1c1c1c1a1c1c1c212e251c1e2b211c1c2638262b2f313535351a243b403b343f2e343531010c0c0c06060610060610311d161d3131313131313131313131313131313131313131313131313131313131313131313131313131313131313131313131313131ffc000110800e100e103012200021101031101ffc4001b00000203010101000000000000000000000203000104050607ffc4003d10000103020403060501060602030000000100021103210412314151617105228191b1f01332a1c1d1e10614627292f123334252b2c215823453d2ffc40014010100000000000000000000000000000000ffc40014110100000000000000000000000000000000ffda000c03010002110311003f00f49fb438b70c43c073c0cc059c6341c1735f8979119dc7ff0063bf8ad3fb49ff00c8abfcc3d02e635c76ba0a7e2ea83f3bfccfe53b0d8ca9bbddfd45677be7d3f552444193705039fda750921c5d1d4a5b31ef23287bff00a8fe565c4d439b5024c0ea89ad0d8b8fd7920df4b14f02ef77f5140dc63f3139dd16d09b78caccfabe292c7c79e9d50745b8b788efbbfa8fe5418b79905ef1c1d98f8f42b167d8f9ab620e8d4c73da00cee33fc452cf68d5d9efeb98f96ab9d5ab0303784c2f916f70837d1c7d49f9dd3fcc7f296fc5559f9dff00d47f2b2527b7593e298f70941aa8e3aa0d6a3cff00ec7f29f4b1cf2273bad6f98fe5729f5af1a884c618236d10748e32a5e5ef038663f941fbf3e7e77ff51f7bacc1e5c396c67594b76a834d1ed2a844e6789e2e3b5b8f24c1da1507fadfd731f49e2b066e4898f1a787de106c38fa8347bffa8a652c7d49ff0031f7db31e5cd602f8249b0e1eaa52a883a553b56a82d602f2e759bdf22fac5cad95b1751b6739ec736ce6971fce8b8b5aab5e435cdd890e98bce839db546eab326492752e249d206bd020da7b49e4902abcc6b0e76bc35d55b71f53ffb1f3fccefcae3e1d9924da5c64c137da4f130b4fc441a998cab9b31a8f0348cee82363ad8a737b41e6ff11fc7e677d6eb9e1e4933a5a2fea98d283d97fe47f8bdf9ab5cec83de651070ff0068aa0189ab3221df6175c9fde1a4183c1747f6a9b388abb77bcf45c7c3511de0e235b459035c38217be0c4a6388d2129cd9ba0b0e90503e0472d1469e3aaa1aeb6f7a2020a834f50a17c9b6df35bc91008206cf0d9134c5f449c617774346a61dc871f294e8b2006500e39a62fa22f83799b735094dcdc782002cd3d15bc3a34f05726e743109cd77193bfbf1408a74e209178840da462013aee7eab65079c803fe68bc7e122b57d804154ea6521a34d7f298f59899d2cb5b59613ac6c8298dd4949ff00c930180d9d7f52998930ceab9cca1fea0099b79ee83a61cd7dc1d3ee85c3e8b0b1c58e006f65d1adcf740a6fa1544755038f011cb75645bdca02e6a8bc024f017505d0811616d6fc3920d01f69893780374c8bf2294d944ea85a1b20924c18bc4ee7920f591eeea20f89d3e9f9510717f68181d88ab06f9a23815c87614ebeedf75a3f6a71cefde5ec65b2d425ce3ef40870a7b905c5ce2499312677409784b79b4e82e9af024dfe883210469179e3cbc1067a45d7cd1d47a2637a593c522547b20a0531801249d637e0abe20984c7d130244c7bb2ce69409126503432493ef82b63654a462013736b79df828d78037f5d505b609b74e4868b4c10493ef656c6dc9b7bdd1804e882db7df4374ccb7e481fdd83304d951a97b92503a604eab1fc59b2d46a8f940b190679f04ac80586881791a1baa3c357efc4db4e293f0cdefa9909b86a61a731df4fca0d555936db82c029b9a61a3a2d4eaa73104c4e88dc487420c986c319976bc16b7954099403725c0dcc72e5cd05017b2587e6b8d9c5b6bcc591c01a1deffa23a7036d6f6402d0078fb856ca426784fd7d5106df8dd53441df540d6b131b55b98b26f00f5e281cf2d1c7edd5228d6713311afbf441ebf37b9fd144c9770fa1510790fda1a60626b10c971a9793dd83112b98cee1cce70738bb51e30005e8fb7da1f5ea348905ce93d345c0786b097bf2922c1a3edc4a0e96a24800ac6ead0f2c2d2604976dd161c3621ef7077cad1a09d79b8eebad5d8601036ba0dfd9389a327e366cbfc226791dc7e8b2d67b4939640921b9b58d89e7a2c05b17bab9e7e680a9577b9ce2e606b4086f38df94f054f7cf2b28d249b1b5edc7ddd5b8dd010306c95657088140424f044c6c734242b63c20cd88adde8cba11051d5783046c8ab531ade4f9217b08905b6b1067edb20a983256aa45a459269d31109cc1008df40801f9a6c0658eb79578ff0095a409235e6adcf82a4eba7341cca75b35468769b8e0bb158efb247c36139a04f1d15bdd6dca02246b20421009888fcab6b7d10b4eb62351740d2c9545cd024f97d123e310e20931681c129bc05ca0dcdbb647bdd01304189dbf559f09521d04c8256aaec3a8fd50138c83f459f0ee03685a5afcad93b71591f8b974c5b641eeff00793c47905693e1e9f851079fed977f8f53f9ddeab998bc1e78235d085d0edb3fe3d43fc6ef55918f31283998863c12c6021e352469ce56ec0bb2b031c733f73af994ec631ef6776d6b91a91fed95c4c3bde5c06514d90e6c81de37bc9d7541d8ad4e02ce769db44786c5b4c30cc816241823aa2aade52250288bde47bdd48d82270e885a79a0224f8206b80d39d930b6d7bd8d9468169082980917b7bd11064f9a30ac8164021fc08f5ea8aab8c18198ce87aedcd5001a3975445ed3a20a0ed2e01d821718bf042ea40bb345c0844582e7d50544dd43be881c46d1ef9216993f540d9005fa282c6da40fd55145f74160dd5542667ebcba7554d6907f5567aa020c0626e806144933a9479ac4a93b04155b0ec200d083208306468adf224936d917b2aded908280cda81a05670ad3c10d368f7c53986f1aea83d5e4e67eaa2d19397bf3510793ed9a9fe354b68f7ffc96071e0b776bba2b54d4cbdfb7f11581c2fb20751af93e6332602c9570cc325ae277ef73d426e2584b65b16999418068b667c73361e7c502aa576332cea3e5b6bc8755ada439b6b48dfc965c5767f7c3def240bcdbc004231f26c21b303fdc79c20d0ea7f440c07c13dccb471f3492d17f7e080a5ba4c9d51b19c00b4a5b29b666d78df82a7104fbe28283035cd2e74b9d6e5fa2d6eb026121a01bc584edf54c7bbbb628315578cd253c5301d3363b2486449225329d3f21a2036b20ccf82a7f7499d3512516524dfdceca16ca043626624db65a8c44c40b2cf7ba463e9bce4ca6235e0506c201920c8e0adad3c1061d85a1a0907894e79da267c875416596940446dbca5d2ce0b8bdcd20dc0022394f0459e764161deb0adad976681c10b4199999561b1ea80c9822daa3df979a53582677ea990814f82725f4990b450601e294c60dad332881816d507bac9eecad0dfdca883c876a7f9d50f07bff00e45734eaba7daa62ad43fc6fff00915cc7826387bd503a93f6379f70b9bda9802f2083948917d16d603aa7541373c1067a5409a6d1198b040933e278acacc300666fb1ff00f2ba14bbb3bea86bd3b5905517826397b083122c2278ca0a369023af05a437334c091d371aa0c4499b6fee169653e5d511c3e582751a28d66e81f8cacd6b035bf31d7f0b0d231cc5a536a3338b0d374387cb79d9068762193943503cc9b78a531a734802e53ea5ccfd020a60f7f94df87627df82ca6a5c026206837e3f6487b9d20026fcf641a9ae698bef1fdd68af4f3340d82c75e908976b1faabc03e64493d74414693416813209204faa7017274d2dd3fba22c837df74b0c37bef3fa2037b84489f1fc2531b7275e48e3557a4f30816d39a751062f6d382302eacbb6dfd50b840f24167ec8dc39a11af878a996c07d7ec80b291b7be289a3fb217d3980792631b97fbcfd107b683ee3f2a26e51ee1441e33b57fcc78fe37fa9584b617471f4cbaabff9dfff0022b20ab4f364ce27d4ee1027c947029df0c8d442455796e801bdfa71e682808bea8e9c93c95b448b21cf69027c500e23085833477009fd162c0f68bf38310c13bc085dc359af61639b2d32bcde2a83db5030446c0e91f7b20f46d0ca80b98640e3aace5b0248cb7dfaacfd9d8e0dee06e6738c39de1aa98a74839a6468836b1bae58e7ba1fdd5ba9200bdfd12e954204710b1d76458bb531aa0dcd2c0358bee9249cd60082b29a44f7601b05b70ec8171bd904c4615a5b33047fd8e9f4496522600b45bcd6c7b733729d24696d1269c87f0d9027114c825a6f238ad184a640b8e89ee60993e2915ab98b71e85047b094394ea8608d13a98b73ba057254f9f046f1efc5096f336ba085b08634b2336e6a39c2500e5b7344f201ba948f78c88e1bf9a2ad723ea82e278fbfba2a6d9296d7fbf444310003124dacdd420f739bdc9fc288b27b82a20f1fdb6fcaf7089ccf76f1173c179c760a48d2d799dd74ff00686a3be2bb866769d7458b0f58be0377247141bb0d5df90870d343f659ea124f92e8086b32efbee5657b071e48250078c423a82cb3b2c7529c049d50330cc93d568ed3c1b5ec80407da0ae736b3a4c1803ea8a8621ce93ac18d771aa0a630533958329dddccaba3886547419046e458ad956887b2f63b1fb1e4b0fc12c75c401a7141adf85394861da01d74f7f54aa98497f284b3da2e6886e9d375a1f5738696b86691238a0830ed17f0490e880341a23a95ef948ef082639a49768501d56b8e9e1d568a0d200cd72954de2dac22c63ac45f4e3b710501e796dc46dacdd20d3bacc2ab830bf2efc4919792df4487005bc344196b08dee9b86daea54c393cb74ca4ccb6937082e93359235b5b6e696d82d167349e234d754d7d4cb1dd26f16f551ec39a439d1796da399414f65a499482d32674dbc87dd3de3693b21734f041190a422cb6d38aa9841325818f046d7981683a91b216cce89c19c2c83dc65f7dd51147bf61441e371e1a5efcc01ef3bd4ae6d2788ee8208246804906345aab839dfcdce3d2e525cd924201cb7240b9f542f784ccba8f3598b0cdc580d677e101009780d2e769eec89efeec81a9b8298ea248d240db8dac945c48823c902cb04c6933a2d34da0080d80b3d1372533e24c80e3efaa063ebe46926e6f005c9b48808dc73b1a09227cc4ace5f3aeaa7c56b60937903f4412bd00cf9b4d0745cec43e3296024cd8aecd5a42a3729f09d17231542a32c343bc683971941b3b3a4b8e60334093bdb62b63a9c4d8ae460ea16be4183f85d8c376835f21c7426fa587040b6b20c98b04a6373bdd23bb1f31f41c9753f766bdb670b7383e2b1d7c03f344198f0e88068c0919bba05ed23fba6e01cd2c2e03723fb714fa582000917e03a688ea38680587aa0ccea82f7ba81bcd66f80ecd3b2d4c278581f1414470beca9ee8b94ca6cdf409eca126ed32831498cd076b7f744ed2daaec37030d922def65cac5f68d3a64863731df5b20cada864378defc27ea9c44fbf45a5d4c39ad7e5891a7094bc9640a6a6d2fa8dd08170136932fa6e83ddc1f72a2764e4a20f9fd6777dd6dcedceeb3bd97f73c96caacef3a48d4ff00648b5edf9408f8424913245fec81e22e765a329438ca4724b6fc50617e20ede10a51792209067dc25993b2ac3b64cf037941a5f8603448753e6b53c4b4b67af9ab81c106760e72ac11a422c84c0f1baa653b98107440598ad25c1cdcaeb8e9e8b2d2a19440d3afe53d949b21c4dc4c5f8ea831bf005a1c45e2e08d7a1585945e18d689927c86a7ecbbd87ed1639e58c32f6ebc96eaa33b622f7208e28386c25a209ef1813b58c9fa2e8e07b65c5f948cc341ca375588ecc7baed824348117b9d4faae7bb0ee6819ad36e1d507a3aef0e639f4dc018241226c2e6cb9eec430b33873600ef13a08d7a2cf86c4e46e844ff00c761e2ba745ed7d32d7b201078406911e1641c87e307c46d3024961a85d3602c05b795b07dd72301fb3d5d8e738d568612035cd873cb19f209221a23aaefb698cc816600bea741f74146a16ba4defa1b78acf8b743e60db41a6aa37045a4bf3c822627cd0331755ce1de7bd9df76a66676601a9fa0596b506924876968758cf4d576f0795eccbb936275046e170712031ef63f3b9cd77f28e837841d7c0d40f6e43048e03f284b05813ec247679ccf80dca60de49d6dbad2ea1049cd2743b20ce05f5ba7d11713c76401a0dcea0a3c3fcde20a0f7d954470a20f9cd46105d3ac9f5fec94e63f33634d0822f11c574711598d790e8d498f4d12062a746c6dfa83c1003e1b19cc4e9ba3763a90b6a0f2d567ed0a44baf7e1c163c824c81ba0e8bd94dcd869cbcb540708d68117fbf358b0ef173c23f55d2c3d5ced26d62832bd9ad90161892b6165e64a1ab48b8478ca0ce18ac5244d61b703a28f61d889e77d5003698b0f2fc263c40e3c15b1a446fcd31ace9e3c1067a541adef0680e76a74f34ca756e8eab24c6a2dba16b38f97e1068a554876be09b558da9f37cdb1fb2ca01024ea9f46c35f041cdc6e09f3394c082781be92340b8bda18aaaecb4dd2dcee02441dee275d17b6a588d8c106c677596b765527bc3da3be24b6fdd077b6c833fef590063346e56f8ee9b4bb4439e59972c1899b1f7748a749cd710e16682e33feed9739ad738378b9c5d33c4a0ecf6961888304c83137817fbaca19fe1c9379168d9557ed1787002f91d9435d31110495a30d8da6e2439a5864013deb1df920676530e76c9dd733b50b8d67e627537e40c05bb118e63333691ccf044b88b01be5dc958b13221d01c0c733d502bb200355ad133326d36deebbb8f7b448e697d9d870c69a8d9ef0d0ea8711ded36b71e6816d31a0db7e28e8b7bc2fc10116b0f0e53aa65071ce2db833641efe14521441f3ec7e1407b9dadcacd4aa5ec3a427e27152f7b78923eab296c5879ee81bfbc1e444de522bb0b9d99b1a7ca3ecaf201324f2dd6c63400d88ea5023078211245cecb532831a5b6d39ec7554f7c6fef8248a9a9e36d2f1d78203655b3a5ba4c44dc2a6569d6c96c61988d55be8ed3f840e001983ba4b8785d3708cee9254736473dbf0801ad3752a39ad817bdf7f556fa81800b6674868e9afaac552b1712d264b44c041bf0cf6bc9681a7b9461adbf7a22cb3f668b49b584a1c8d24907c0a079823593a29419a9e4566c33c34dc7285b9a00d7ea100668b4804c6ff0044da660dbc501683789d11658f7f440f30e696bb43f759a861e930b416b8e5300925593c7c12cbe65a6dcd02b1f8574bdec82d0264ebcecb9d85a0eee170209bdd7630cf22d2b63f12d3a816b20e0d5c21f8a041ef48883a471f25a70581744381001b4eb07eab7e23184ef6d167c35539a4c917e283657ab3bc0d964aac01a4892e22df72ade769f67644277940aa14f283acf3bf55a6830483bca5b1c4ead8dd3685321c2f37941ee5445ef75683e7989677dc66f27d75595ed831795d673067333e3d4e8935bb3f35e6facfd9060701a008293c8742dadc03c1302fbcfaa3a7d947e676b698409732fa79a402078f15db7526f09090fc1b241036418e93e4591b19173b9dd6ca584ca49991cbe8b2e28973b2e9250666e2c97775b037b5ec53ded1e775586c3dcdcc047529c1d8a0a73c00604c787548c1e1bbcf73846675afab6169a6ccdd36d930d316db820c58b6106da5a120bba4aea9a21db5f407c7740cc2807ee83360684dca75567129f922c3c1096df5840b0ce5c3921709d75d6cb4fc3b5fd7ea81b460fd7df0419d8d77faa353a6c3646f66690351f5e89c1926131b4e224edb20e7ba47cd60a8dfe512b56270e1c38dd153a61bf2ebeec8310a6748eb29ef606304b87ea6d079ad40493a4a1a94038779a0f5e57418db4cc0d4ee9eca4645ec3eab57c2f4d38c21737bb06413c10676383be5248be89d485c69a81aaac352cad00ea27ddd68a6c12db0bb879f141ec214450a20cee41fafa156a2024b769ef9a8a205ec7a7d92cfe7d428a20a6fbfaacdbf81f4514414eff5751ea927edf6728a20aa7f8f4082bffd9bea55288069e9e1ff00552a6be3f70a2880a9fdfec52eafbfa28a2021f9f5283fd3e01451000d7c02a7e87afe55a882ff00ddd5bf64a6e9e254510151dfa22ada28a208cd4f8a37fe3eea288037f128dbf333f9beea2883d8a8a2883fffd9),
(2, 2, 'rimaislam98\r\n ', 'rimaislam1@outlook.com ', '012325848556', 'Designer', 0xffd8ffe000104a46494600010100000100010000ffdb0084000a0708161615181616161818181a1c181a1a1c191a1c1a1e1f1f1c1e1c1c1c1a1c1c1c212e251c1e2b211c1c2638262b2f313535351a243b403b343f2e343531010c0c0c06060610060610311d161d3131313131313131313131313131313131313131313131313131313131313131313131313131313131313131313131313131ffc000110800e100e103012200021101031101ffc4001b00000203010101000000000000000000000203000104050607ffc4003d10000103020403060501060602030000000100021103210412314151617105228191b1f01332a1c1d1e10614627292f123334252b2c215823453d2ffc40014010100000000000000000000000000000000ffc40014110100000000000000000000000000000000ffda000c03010002110311003f00f49fb438b70c43c073c0cc059c6341c1735f8979119dc7ff0063bf8ad3fb49ff00c8abfcc3d02e635c76ba0a7e2ea83f3bfccfe53b0d8ca9bbddfd45677be7d3f552444193705039fda750921c5d1d4a5b31ef23287bff00a8fe565c4d439b5024c0ea89ad0d8b8fd7920df4b14f02ef77f5140dc63f3139dd16d09b78caccfabe292c7c79e9d50745b8b788efbbfa8fe5418b79905ef1c1d98f8f42b167d8f9ab620e8d4c73da00cee33fc452cf68d5d9efeb98f96ab9d5ab0303784c2f916f70837d1c7d49f9dd3fcc7f296fc5559f9dff00d47f2b2527b7593e298f70941aa8e3aa0d6a3cff00ec7f29f4b1cf2273bad6f98fe5729f5af1a884c618236d10748e32a5e5ef038663f941fbf3e7e77ff51f7bacc1e5c396c67594b76a834d1ed2a844e6789e2e3b5b8f24c1da1507fadfd731f49e2b066e4898f1a787de106c38fa8347bffa8a652c7d49ff0031f7db31e5cd602f8249b0e1eaa52a883a553b56a82d602f2e759bdf22fac5cad95b1751b6739ec736ce6971fce8b8b5aab5e435cdd890e98bce839db546eab326492752e249d206bd020da7b49e4902abcc6b0e76bc35d55b71f53ffb1f3fccefcae3e1d9924da5c64c137da4f130b4fc441a998cab9b31a8f0348cee82363ad8a737b41e6ff11fc7e677d6eb9e1e4933a5a2fea98d283d97fe47f8bdf9ab5cec83de651070ff0068aa0189ab3221df6175c9fde1a4183c1747f6a9b388abb77bcf45c7c3511de0e235b459035c38217be0c4a6388d2129cd9ba0b0e90503e0472d1469e3aaa1aeb6f7a2020a834f50a17c9b6df35bc91008206cf0d9134c5f449c617774346a61dc871f294e8b2006500e39a62fa22f83799b735094dcdc782002cd3d15bc3a34f05726e743109cd77193bfbf1408a74e209178840da462013aee7eab65079c803fe68bc7e122b57d804154ea6521a34d7f298f59899d2cb5b59613ac6c8298dd4949ff00c930180d9d7f52998930ceab9cca1fea0099b79ee83a61cd7dc1d3ee85c3e8b0b1c58e006f65d1adcf740a6fa1544755038f011cb75645bdca02e6a8bc024f017505d0811616d6fc3920d01f69893780374c8bf2294d944ea85a1b20924c18bc4ee7920f591eeea20f89d3e9f9510717f68181d88ab06f9a23815c87614ebeedf75a3f6a71cefde5ec65b2d425ce3ef40870a7b905c5ce2499312677409784b79b4e82e9af024dfe883210469179e3cbc1067a45d7cd1d47a2637a593c522547b20a0531801249d637e0abe20984c7d130244c7bb2ce69409126503432493ef82b63654a462013736b79df828d78037f5d505b609b74e4868b4c10493ef656c6dc9b7bdd1804e882db7df4374ccb7e481fdd83304d951a97b92503a604eab1fc59b2d46a8f940b190679f04ac80586881791a1baa3c357efc4db4e293f0cdefa9909b86a61a731df4fca0d555936db82c029b9a61a3a2d4eaa73104c4e88dc487420c986c319976bc16b7954099403725c0dcc72e5cd05017b2587e6b8d9c5b6bcc591c01a1deffa23a7036d6f6402d0078fb856ca426784fd7d5106df8dd53441df540d6b131b55b98b26f00f5e281cf2d1c7edd5228d6713311afbf441ebf37b9fd144c9770fa1510790fda1a60626b10c971a9793dd83112b98cee1cce70738bb51e30005e8fb7da1f5ea348905ce93d345c0786b097bf2922c1a3edc4a0e96a24800ac6ead0f2c2d2604976dd161c3621ef7077cad1a09d79b8eebad5d8601036ba0dfd9389a327e366cbfc226791dc7e8b2d67b4939640921b9b58d89e7a2c05b17bab9e7e680a9577b9ce2e606b4086f38df94f054f7cf2b28d249b1b5edc7ddd5b8dd010306c95657088140424f044c6c734242b63c20cd88adde8cba11051d5783046c8ab531ade4f9217b08905b6b1067edb20a983256aa45a459269d31109cc1008df40801f9a6c0658eb79578ff0095a409235e6adcf82a4eba7341cca75b35468769b8e0bb158efb247c36139a04f1d15bdd6dca02246b20421009888fcab6b7d10b4eb62351740d2c9545cd024f97d123e310e20931681c129bc05ca0dcdbb647bdd01304189dbf559f09521d04c8256aaec3a8fd50138c83f459f0ee03685a5afcad93b71591f8b974c5b641eeff00793c47905693e1e9f851079fed977f8f53f9ddeab998bc1e78235d085d0edb3fe3d43fc6ef55918f31283998863c12c6021e352469ce56ec0bb2b031c733f73af994ec631ef6776d6b91a91fed95c4c3bde5c06514d90e6c81de37bc9d7541d8ad4e02ce769db44786c5b4c30cc816241823aa2aade52250288bde47bdd48d82270e885a79a0224f8206b80d39d930b6d7bd8d9468169082980917b7bd11064f9a30ac8164021fc08f5ea8aab8c18198ce87aedcd5001a3975445ed3a20a0ed2e01d821718bf042ea40bb345c0844582e7d50544dd43be881c46d1ef9216993f540d9005fa282c6da40fd55145f74160dd5542667ebcba7554d6907f5567aa020c0626e806144933a9479ac4a93b04155b0ec200d083208306468adf224936d917b2aded908280cda81a05670ad3c10d368f7c53986f1aea83d5e4e67eaa2d19397bf3510793ed9a9fe354b68f7ffc96071e0b776bba2b54d4cbdfb7f11581c2fb20751af93e6332602c9570cc325ae277ef73d426e2584b65b16999418068b667c73361e7c502aa576332cea3e5b6bc8755ada439b6b48dfc965c5767f7c3def240bcdbc004231f26c21b303fdc79c20d0ea7f440c07c13dccb471f3492d17f7e080a5ba4c9d51b19c00b4a5b29b666d78df82a7104fbe28283035cd2e74b9d6e5fa2d6eb026121a01bc584edf54c7bbbb628315578cd253c5301d3363b2486449225329d3f21a2036b20ccf82a7f7499d3512516524dfdceca16ca043626624db65a8c44c40b2cf7ba463e9bce4ca6235e0506c201920c8e0adad3c1061d85a1a0907894e79da267c875416596940446dbca5d2ce0b8bdcd20dc0022394f0459e764161deb0adad976681c10b4199999561b1ea80c9822daa3df979a53582677ea990814f82725f4990b450601e294c60dad332881816d507bac9eecad0dfdca883c876a7f9d50f07bff00e45734eaba7daa62ad43fc6fff00915cc7826387bd503a93f6379f70b9bda9802f2083948917d16d603aa7541373c1067a5409a6d1198b040933e278acacc300666fb1ff00f2ba14bbb3bea86bd3b5905517826397b083122c2278ca0a369023af05a437334c091d371aa0c4499b6fee169653e5d511c3e582751a28d66e81f8cacd6b035bf31d7f0b0d231cc5a536a3338b0d374387cb79d9068762193943503cc9b78a531a734802e53ea5ccfd020a60f7f94df87627df82ca6a5c026206837e3f6487b9d20026fcf641a9ae698bef1fdd68af4f3340d82c75e908976b1faabc03e64493d74414693416813209204faa7017274d2dd3fba22c837df74b0c37bef3fa2037b84489f1fc2531b7275e48e3557a4f30816d39a751062f6d382302eacbb6dfd50b840f24167ec8dc39a11af878a996c07d7ec80b291b7be289a3fb217d3980792631b97fbcfd107b683ee3f2a26e51ee1441e33b57fcc78fe37fa9584b617471f4cbaabff9dfff0022b20ab4f364ce27d4ee1027c947029df0c8d442455796e801bdfa71e682808bea8e9c93c95b448b21cf69027c500e23085833477009fd162c0f68bf38310c13bc085dc359af61639b2d32bcde2a83db5030446c0e91f7b20f46d0ca80b98640e3aace5b0248cb7dfaacfd9d8e0dee06e6738c39de1aa98a74839a6468836b1bae58e7ba1fdd5ba9200bdfd12e954204710b1d76458bb531aa0dcd2c0358bee9249cd60082b29a44f7601b05b70ec8171bd904c4615a5b33047fd8e9f4496522600b45bcd6c7b733729d24696d1269c87f0d9027114c825a6f238ad184a640b8e89ee60993e2915ab98b71e85047b094394ea8608d13a98b73ba057254f9f046f1efc5096f336ba085b08634b2336e6a39c2500e5b7344f201ba948f78c88e1bf9a2ad723ea82e278fbfba2a6d9296d7fbf444310003124dacdd420f739bdc9fc288b27b82a20f1fdb6fcaf7089ccf76f1173c179c760a48d2d799dd74ff00686a3be2bb866769d7458b0f58be0377247141bb0d5df90870d343f659ea124f92e8086b32efbee5657b071e48250078c423a82cb3b2c7529c049d50330cc93d568ed3c1b5ec80407da0ae736b3a4c1803ea8a8621ce93ac18d771aa0a630533958329dddccaba3886547419046e458ad956887b2f63b1fb1e4b0fc12c75c401a7141adf85394861da01d74f7f54aa98497f284b3da2e6886e9d375a1f5738696b86691238a0830ed17f0490e880341a23a95ef948ef082639a49768501d56b8e9e1d568a0d200cd72954de2dac22c63ac45f4e3b710501e796dc46dacdd20d3bacc2ab830bf2efc4919792df4487005bc344196b08dee9b86daea54c393cb74ca4ccb6937082e93359235b5b6e696d82d167349e234d754d7d4cb1dd26f16f551ec39a439d1796da399414f65a499482d32674dbc87dd3de3693b21734f041190a422cb6d38aa9841325818f046d7981683a91b216cce89c19c2c83dc65f7dd51147bf61441e371e1a5efcc01ef3bd4ae6d2788ee8208246804906345aab839dfcdce3d2e525cd924201cb7240b9f542f784ccba8f3598b0cdc580d677e101009780d2e769eec89efeec81a9b8298ea248d240db8dac945c48823c902cb04c6933a2d34da0080d80b3d1372533e24c80e3efaa063ebe46926e6f005c9b48808dc73b1a09227cc4ace5f3aeaa7c56b60937903f4412bd00cf9b4d0745cec43e3296024cd8aecd5a42a3729f09d17231542a32c343bc683971941b3b3a4b8e60334093bdb62b63a9c4d8ae460ea16be4183f85d8c376835f21c7426fa587040b6b20c98b04a6373bdd23bb1f31f41c9753f766bdb670b7383e2b1d7c03f344198f0e88068c0919bba05ed23fba6e01cd2c2e03723fb714fa582000917e03a688ea38680587aa0ccea82f7ba81bcd66f80ecd3b2d4c278581f1414470beca9ee8b94ca6cdf409eca126ed32831498cd076b7f744ed2daaec37030d922def65cac5f68d3a64863731df5b20cada864378defc27ea9c44fbf45a5d4c39ad7e5891a7094bc9640a6a6d2fa8dd08170136932fa6e83ddc1f72a2764e4a20f9fd6777dd6dcedceeb3bd97f73c96caacef3a48d4ff00648b5edf9408f8424913245fec81e22e765a329438ca4724b6fc50617e20ede10a51792209067dc25993b2ac3b64cf037941a5f8603448753e6b53c4b4b67af9ab81c106760e72ac11a422c84c0f1baa653b98107440598ad25c1cdcaeb8e9e8b2d2a19440d3afe53d949b21c4dc4c5f8ea831bf005a1c45e2e08d7a1585945e18d689927c86a7ecbbd87ed1639e58c32f6ebc96eaa33b622f7208e28386c25a209ef1813b58c9fa2e8e07b65c5f948cc341ca375588ecc7baed824348117b9d4faae7bb0ee6819ad36e1d507a3aef0e639f4dc018241226c2e6cb9eec430b33873600ef13a08d7a2cf86c4e46e844ff00c761e2ba745ed7d32d7b201078406911e1641c87e307c46d3024961a85d3602c05b795b07dd72301fb3d5d8e738d568612035cd873cb19f209221a23aaefb698cc816600bea741f74146a16ba4defa1b78acf8b743e60db41a6aa37045a4bf3c822627cd0331755ce1de7bd9df76a66676601a9fa0596b506924876968758cf4d576f0795eccbb936275046e170712031ef63f3b9cd77f28e837841d7c0d40f6e43048e03f284b05813ec247679ccf80dca60de49d6dbad2ea1049cd2743b20ce05f5ba7d11713c76401a0dcea0a3c3fcde20a0f7d954470a20f9cd46105d3ac9f5fec94e63f33634d0822f11c574711598d790e8d498f4d12062a746c6dfa83c1003e1b19cc4e9ba3763a90b6a0f2d567ed0a44baf7e1c163c824c81ba0e8bd94dcd869cbcb540708d68117fbf358b0ef173c23f55d2c3d5ced26d62832bd9ad90161892b6165e64a1ab48b8478ca0ce18ac5244d61b703a28f61d889e77d5003698b0f2fc263c40e3c15b1a446fcd31ace9e3c1067a541adef0680e76a74f34ca756e8eab24c6a2dba16b38f97e1068a554876be09b558da9f37cdb1fb2ca01024ea9f46c35f041cdc6e09f3394c082781be92340b8bda18aaaecb4dd2dcee02441dee275d17b6a588d8c106c677596b765527bc3da3be24b6fdd077b6c833fef590063346e56f8ee9b4bb4439e59972c1899b1f7748a749cd710e16682e33feed9739ad738378b9c5d33c4a0ecf6961888304c83137817fbaca19fe1c9379168d9557ed1787002f91d9435d31110495a30d8da6e2439a5864013deb1df920676530e76c9dd733b50b8d67e627537e40c05bb118e63333691ccf044b88b01be5dc958b13221d01c0c733d502bb200355ad133326d36deebbb8f7b448e697d9d870c69a8d9ef0d0ea8711ded36b71e6816d31a0db7e28e8b7bc2fc10116b0f0e53aa65071ce2db833641efe14521441f3ec7e1407b9dadcacd4aa5ec3a427e27152f7b78923eab296c5879ee81bfbc1e444de522bb0b9d99b1a7ca3ecaf201324f2dd6c63400d88ea5023078211245cecb532831a5b6d39ec7554f7c6fef8248a9a9e36d2f1d78203655b3a5ba4c44dc2a6569d6c96c61988d55be8ed3f840e001983ba4b8785d3708cee9254736473dbf0801ad3752a39ad817bdf7f556fa81800b6674868e9afaac552b1712d264b44c041bf0cf6bc9681a7b9461adbf7a22cb3f668b49b584a1c8d24907c0a079823593a29419a9e4566c33c34dc7285b9a00d7ea100668b4804c6ff0044da660dbc501683789d11658f7f440f30e696bb43f759a861e930b416b8e5300925593c7c12cbe65a6dcd02b1f8574bdec82d0264ebcecb9d85a0eee170209bdd7630cf22d2b63f12d3a816b20e0d5c21f8a041ef48883a471f25a70581744381001b4eb07eab7e23184ef6d167c35539a4c917e283657ab3bc0d964aac01a4892e22df72ade769f67644277940aa14f283acf3bf55a6830483bca5b1c4ead8dd3685321c2f37941ee5445ef75683e7989677dc66f27d75595ed831795d673067333e3d4e8935bb3f35e6facfd9060701a008293c8742dadc03c1302fbcfaa3a7d947e676b698409732fa79a402078f15db7526f09090fc1b241036418e93e4591b19173b9dd6ca584ca49991cbe8b2e28973b2e9250666e2c97775b037b5ec53ded1e775586c3dcdcc047529c1d8a0a73c00604c787548c1e1bbcf73846675afab6169a6ccdd36d930d316db820c58b6106da5a120bba4aea9a21db5f407c7740cc2807ee83360684dca75567129f922c3c1096df5840b0ce5c3921709d75d6cb4fc3b5fd7ea81b460fd7df0419d8d77faa353a6c3646f66690351f5e89c1926131b4e224edb20e7ba47cd60a8dfe512b56270e1c38dd153a61bf2ebeec8310a6748eb29ef606304b87ea6d079ad40493a4a1a94038779a0f5e57418db4cc0d4ee9eca4645ec3eab57c2f4d38c21737bb06413c10676383be5248be89d485c69a81aaac352cad00ea27ddd68a6c12db0bb879f141ec214450a20cee41fafa156a2024b769ef9a8a205ec7a7d92cfe7d428a20a6fbfaacdbf81f4514414eff5751ea927edf6728a20aa7f8f4082bffd9bea55288069e9e1ff00552a6be3f70a2880a9fdfec52eafbfa28a2021f9f5283fd3e01451000d7c02a7e87afe55a882ff00ddd5bf64a6e9e254510151dfa22ada28a208cd4f8a37fe3eea288037f128dbf333f9beea2883d8a8a2883fffd9),
(3, 3, 'gazifr6590\r\n', 'gazifariya43@protonmail.com ', '618668716', 'Backend developer', 0xffd8ffe000104a46494600010100000100010000ffdb0084000a0708161615181616161818181a1c181a1a1c191a1c1a1e1f1f1c1e1c1c1c1a1c1c1c212e251c1e2b211c1c2638262b2f313535351a243b403b343f2e343531010c0c0c06060610060610311d161d3131313131313131313131313131313131313131313131313131313131313131313131313131313131313131313131313131ffc000110800e100e103012200021101031101ffc4001b00000203010101000000000000000000000203000104050607ffc4003d10000103020403060501060602030000000100021103210412314151617105228191b1f01332a1c1d1e10614627292f123334252b2c215823453d2ffc40014010100000000000000000000000000000000ffc40014110100000000000000000000000000000000ffda000c03010002110311003f00f49fb438b70c43c073c0cc059c6341c1735f8979119dc7ff0063bf8ad3fb49ff00c8abfcc3d02e635c76ba0a7e2ea83f3bfccfe53b0d8ca9bbddfd45677be7d3f552444193705039fda750921c5d1d4a5b31ef23287bff00a8fe565c4d439b5024c0ea89ad0d8b8fd7920df4b14f02ef77f5140dc63f3139dd16d09b78caccfabe292c7c79e9d50745b8b788efbbfa8fe5418b79905ef1c1d98f8f42b167d8f9ab620e8d4c73da00cee33fc452cf68d5d9efeb98f96ab9d5ab0303784c2f916f70837d1c7d49f9dd3fcc7f296fc5559f9dff00d47f2b2527b7593e298f70941aa8e3aa0d6a3cff00ec7f29f4b1cf2273bad6f98fe5729f5af1a884c618236d10748e32a5e5ef038663f941fbf3e7e77ff51f7bacc1e5c396c67594b76a834d1ed2a844e6789e2e3b5b8f24c1da1507fadfd731f49e2b066e4898f1a787de106c38fa8347bffa8a652c7d49ff0031f7db31e5cd602f8249b0e1eaa52a883a553b56a82d602f2e759bdf22fac5cad95b1751b6739ec736ce6971fce8b8b5aab5e435cdd890e98bce839db546eab326492752e249d206bd020da7b49e4902abcc6b0e76bc35d55b71f53ffb1f3fccefcae3e1d9924da5c64c137da4f130b4fc441a998cab9b31a8f0348cee82363ad8a737b41e6ff11fc7e677d6eb9e1e4933a5a2fea98d283d97fe47f8bdf9ab5cec83de651070ff0068aa0189ab3221df6175c9fde1a4183c1747f6a9b388abb77bcf45c7c3511de0e235b459035c38217be0c4a6388d2129cd9ba0b0e90503e0472d1469e3aaa1aeb6f7a2020a834f50a17c9b6df35bc91008206cf0d9134c5f449c617774346a61dc871f294e8b2006500e39a62fa22f83799b735094dcdc782002cd3d15bc3a34f05726e743109cd77193bfbf1408a74e209178840da462013aee7eab65079c803fe68bc7e122b57d804154ea6521a34d7f298f59899d2cb5b59613ac6c8298dd4949ff00c930180d9d7f52998930ceab9cca1fea0099b79ee83a61cd7dc1d3ee85c3e8b0b1c58e006f65d1adcf740a6fa1544755038f011cb75645bdca02e6a8bc024f017505d0811616d6fc3920d01f69893780374c8bf2294d944ea85a1b20924c18bc4ee7920f591eeea20f89d3e9f9510717f68181d88ab06f9a23815c87614ebeedf75a3f6a71cefde5ec65b2d425ce3ef40870a7b905c5ce2499312677409784b79b4e82e9af024dfe883210469179e3cbc1067a45d7cd1d47a2637a593c522547b20a0531801249d637e0abe20984c7d130244c7bb2ce69409126503432493ef82b63654a462013736b79df828d78037f5d505b609b74e4868b4c10493ef656c6dc9b7bdd1804e882db7df4374ccb7e481fdd83304d951a97b92503a604eab1fc59b2d46a8f940b190679f04ac80586881791a1baa3c357efc4db4e293f0cdefa9909b86a61a731df4fca0d555936db82c029b9a61a3a2d4eaa73104c4e88dc487420c986c319976bc16b7954099403725c0dcc72e5cd05017b2587e6b8d9c5b6bcc591c01a1deffa23a7036d6f6402d0078fb856ca426784fd7d5106df8dd53441df540d6b131b55b98b26f00f5e281cf2d1c7edd5228d6713311afbf441ebf37b9fd144c9770fa1510790fda1a60626b10c971a9793dd83112b98cee1cce70738bb51e30005e8fb7da1f5ea348905ce93d345c0786b097bf2922c1a3edc4a0e96a24800ac6ead0f2c2d2604976dd161c3621ef7077cad1a09d79b8eebad5d8601036ba0dfd9389a327e366cbfc226791dc7e8b2d67b4939640921b9b58d89e7a2c05b17bab9e7e680a9577b9ce2e606b4086f38df94f054f7cf2b28d249b1b5edc7ddd5b8dd010306c95657088140424f044c6c734242b63c20cd88adde8cba11051d5783046c8ab531ade4f9217b08905b6b1067edb20a983256aa45a459269d31109cc1008df40801f9a6c0658eb79578ff0095a409235e6adcf82a4eba7341cca75b35468769b8e0bb158efb247c36139a04f1d15bdd6dca02246b20421009888fcab6b7d10b4eb62351740d2c9545cd024f97d123e310e20931681c129bc05ca0dcdbb647bdd01304189dbf559f09521d04c8256aaec3a8fd50138c83f459f0ee03685a5afcad93b71591f8b974c5b641eeff00793c47905693e1e9f851079fed977f8f53f9ddeab998bc1e78235d085d0edb3fe3d43fc6ef55918f31283998863c12c6021e352469ce56ec0bb2b031c733f73af994ec631ef6776d6b91a91fed95c4c3bde5c06514d90e6c81de37bc9d7541d8ad4e02ce769db44786c5b4c30cc816241823aa2aade52250288bde47bdd48d82270e885a79a0224f8206b80d39d930b6d7bd8d9468169082980917b7bd11064f9a30ac8164021fc08f5ea8aab8c18198ce87aedcd5001a3975445ed3a20a0ed2e01d821718bf042ea40bb345c0844582e7d50544dd43be881c46d1ef9216993f540d9005fa282c6da40fd55145f74160dd5542667ebcba7554d6907f5567aa020c0626e806144933a9479ac4a93b04155b0ec200d083208306468adf224936d917b2aded908280cda81a05670ad3c10d368f7c53986f1aea83d5e4e67eaa2d19397bf3510793ed9a9fe354b68f7ffc96071e0b776bba2b54d4cbdfb7f11581c2fb20751af93e6332602c9570cc325ae277ef73d426e2584b65b16999418068b667c73361e7c502aa576332cea3e5b6bc8755ada439b6b48dfc965c5767f7c3def240bcdbc004231f26c21b303fdc79c20d0ea7f440c07c13dccb471f3492d17f7e080a5ba4c9d51b19c00b4a5b29b666d78df82a7104fbe28283035cd2e74b9d6e5fa2d6eb026121a01bc584edf54c7bbbb628315578cd253c5301d3363b2486449225329d3f21a2036b20ccf82a7f7499d3512516524dfdceca16ca043626624db65a8c44c40b2cf7ba463e9bce4ca6235e0506c201920c8e0adad3c1061d85a1a0907894e79da267c875416596940446dbca5d2ce0b8bdcd20dc0022394f0459e764161deb0adad976681c10b4199999561b1ea80c9822daa3df979a53582677ea990814f82725f4990b450601e294c60dad332881816d507bac9eecad0dfdca883c876a7f9d50f07bff00e45734eaba7daa62ad43fc6fff00915cc7826387bd503a93f6379f70b9bda9802f2083948917d16d603aa7541373c1067a5409a6d1198b040933e278acacc300666fb1ff00f2ba14bbb3bea86bd3b5905517826397b083122c2278ca0a369023af05a437334c091d371aa0c4499b6fee169653e5d511c3e582751a28d66e81f8cacd6b035bf31d7f0b0d231cc5a536a3338b0d374387cb79d9068762193943503cc9b78a531a734802e53ea5ccfd020a60f7f94df87627df82ca6a5c026206837e3f6487b9d20026fcf641a9ae698bef1fdd68af4f3340d82c75e908976b1faabc03e64493d74414693416813209204faa7017274d2dd3fba22c837df74b0c37bef3fa2037b84489f1fc2531b7275e48e3557a4f30816d39a751062f6d382302eacbb6dfd50b840f24167ec8dc39a11af878a996c07d7ec80b291b7be289a3fb217d3980792631b97fbcfd107b683ee3f2a26e51ee1441e33b57fcc78fe37fa9584b617471f4cbaabff9dfff0022b20ab4f364ce27d4ee1027c947029df0c8d442455796e801bdfa71e682808bea8e9c93c95b448b21cf69027c500e23085833477009fd162c0f68bf38310c13bc085dc359af61639b2d32bcde2a83db5030446c0e91f7b20f46d0ca80b98640e3aace5b0248cb7dfaacfd9d8e0dee06e6738c39de1aa98a74839a6468836b1bae58e7ba1fdd5ba9200bdfd12e954204710b1d76458bb531aa0dcd2c0358bee9249cd60082b29a44f7601b05b70ec8171bd904c4615a5b33047fd8e9f4496522600b45bcd6c7b733729d24696d1269c87f0d9027114c825a6f238ad184a640b8e89ee60993e2915ab98b71e85047b094394ea8608d13a98b73ba057254f9f046f1efc5096f336ba085b08634b2336e6a39c2500e5b7344f201ba948f78c88e1bf9a2ad723ea82e278fbfba2a6d9296d7fbf444310003124dacdd420f739bdc9fc288b27b82a20f1fdb6fcaf7089ccf76f1173c179c760a48d2d799dd74ff00686a3be2bb866769d7458b0f58be0377247141bb0d5df90870d343f659ea124f92e8086b32efbee5657b071e48250078c423a82cb3b2c7529c049d50330cc93d568ed3c1b5ec80407da0ae736b3a4c1803ea8a8621ce93ac18d771aa0a630533958329dddccaba3886547419046e458ad956887b2f63b1fb1e4b0fc12c75c401a7141adf85394861da01d74f7f54aa98497f284b3da2e6886e9d375a1f5738696b86691238a0830ed17f0490e880341a23a95ef948ef082639a49768501d56b8e9e1d568a0d200cd72954de2dac22c63ac45f4e3b710501e796dc46dacdd20d3bacc2ab830bf2efc4919792df4487005bc344196b08dee9b86daea54c393cb74ca4ccb6937082e93359235b5b6e696d82d167349e234d754d7d4cb1dd26f16f551ec39a439d1796da399414f65a499482d32674dbc87dd3de3693b21734f041190a422cb6d38aa9841325818f046d7981683a91b216cce89c19c2c83dc65f7dd51147bf61441e371e1a5efcc01ef3bd4ae6d2788ee8208246804906345aab839dfcdce3d2e525cd924201cb7240b9f542f784ccba8f3598b0cdc580d677e101009780d2e769eec89efeec81a9b8298ea248d240db8dac945c48823c902cb04c6933a2d34da0080d80b3d1372533e24c80e3efaa063ebe46926e6f005c9b48808dc73b1a09227cc4ace5f3aeaa7c56b60937903f4412bd00cf9b4d0745cec43e3296024cd8aecd5a42a3729f09d17231542a32c343bc683971941b3b3a4b8e60334093bdb62b63a9c4d8ae460ea16be4183f85d8c376835f21c7426fa587040b6b20c98b04a6373bdd23bb1f31f41c9753f766bdb670b7383e2b1d7c03f344198f0e88068c0919bba05ed23fba6e01cd2c2e03723fb714fa582000917e03a688ea38680587aa0ccea82f7ba81bcd66f80ecd3b2d4c278581f1414470beca9ee8b94ca6cdf409eca126ed32831498cd076b7f744ed2daaec37030d922def65cac5f68d3a64863731df5b20cada864378defc27ea9c44fbf45a5d4c39ad7e5891a7094bc9640a6a6d2fa8dd08170136932fa6e83ddc1f72a2764e4a20f9fd6777dd6dcedceeb3bd97f73c96caacef3a48d4ff00648b5edf9408f8424913245fec81e22e765a329438ca4724b6fc50617e20ede10a51792209067dc25993b2ac3b64cf037941a5f8603448753e6b53c4b4b67af9ab81c106760e72ac11a422c84c0f1baa653b98107440598ad25c1cdcaeb8e9e8b2d2a19440d3afe53d949b21c4dc4c5f8ea831bf005a1c45e2e08d7a1585945e18d689927c86a7ecbbd87ed1639e58c32f6ebc96eaa33b622f7208e28386c25a209ef1813b58c9fa2e8e07b65c5f948cc341ca375588ecc7baed824348117b9d4faae7bb0ee6819ad36e1d507a3aef0e639f4dc018241226c2e6cb9eec430b33873600ef13a08d7a2cf86c4e46e844ff00c761e2ba745ed7d32d7b201078406911e1641c87e307c46d3024961a85d3602c05b795b07dd72301fb3d5d8e738d568612035cd873cb19f209221a23aaefb698cc816600bea741f74146a16ba4defa1b78acf8b743e60db41a6aa37045a4bf3c822627cd0331755ce1de7bd9df76a66676601a9fa0596b506924876968758cf4d576f0795eccbb936275046e170712031ef63f3b9cd77f28e837841d7c0d40f6e43048e03f284b05813ec247679ccf80dca60de49d6dbad2ea1049cd2743b20ce05f5ba7d11713c76401a0dcea0a3c3fcde20a0f7d954470a20f9cd46105d3ac9f5fec94e63f33634d0822f11c574711598d790e8d498f4d12062a746c6dfa83c1003e1b19cc4e9ba3763a90b6a0f2d567ed0a44baf7e1c163c824c81ba0e8bd94dcd869cbcb540708d68117fbf358b0ef173c23f55d2c3d5ced26d62832bd9ad90161892b6165e64a1ab48b8478ca0ce18ac5244d61b703a28f61d889e77d5003698b0f2fc263c40e3c15b1a446fcd31ace9e3c1067a541adef0680e76a74f34ca756e8eab24c6a2dba16b38f97e1068a554876be09b558da9f37cdb1fb2ca01024ea9f46c35f041cdc6e09f3394c082781be92340b8bda18aaaecb4dd2dcee02441dee275d17b6a588d8c106c677596b765527bc3da3be24b6fdd077b6c833fef590063346e56f8ee9b4bb4439e59972c1899b1f7748a749cd710e16682e33feed9739ad738378b9c5d33c4a0ecf6961888304c83137817fbaca19fe1c9379168d9557ed1787002f91d9435d31110495a30d8da6e2439a5864013deb1df920676530e76c9dd733b50b8d67e627537e40c05bb118e63333691ccf044b88b01be5dc958b13221d01c0c733d502bb200355ad133326d36deebbb8f7b448e697d9d870c69a8d9ef0d0ea8711ded36b71e6816d31a0db7e28e8b7bc2fc10116b0f0e53aa65071ce2db833641efe14521441f3ec7e1407b9dadcacd4aa5ec3a427e27152f7b78923eab296c5879ee81bfbc1e444de522bb0b9d99b1a7ca3ecaf201324f2dd6c63400d88ea5023078211245cecb532831a5b6d39ec7554f7c6fef8248a9a9e36d2f1d78203655b3a5ba4c44dc2a6569d6c96c61988d55be8ed3f840e001983ba4b8785d3708cee9254736473dbf0801ad3752a39ad817bdf7f556fa81800b6674868e9afaac552b1712d264b44c041bf0cf6bc9681a7b9461adbf7a22cb3f668b49b584a1c8d24907c0a079823593a29419a9e4566c33c34dc7285b9a00d7ea100668b4804c6ff0044da660dbc501683789d11658f7f440f30e696bb43f759a861e930b416b8e5300925593c7c12cbe65a6dcd02b1f8574bdec82d0264ebcecb9d85a0eee170209bdd7630cf22d2b63f12d3a816b20e0d5c21f8a041ef48883a471f25a70581744381001b4eb07eab7e23184ef6d167c35539a4c917e283657ab3bc0d964aac01a4892e22df72ade769f67644277940aa14f283acf3bf55a6830483bca5b1c4ead8dd3685321c2f37941ee5445ef75683e7989677dc66f27d75595ed831795d673067333e3d4e8935bb3f35e6facfd9060701a008293c8742dadc03c1302fbcfaa3a7d947e676b698409732fa79a402078f15db7526f09090fc1b241036418e93e4591b19173b9dd6ca584ca49991cbe8b2e28973b2e9250666e2c97775b037b5ec53ded1e775586c3dcdcc047529c1d8a0a73c00604c787548c1e1bbcf73846675afab6169a6ccdd36d930d316db820c58b6106da5a120bba4aea9a21db5f407c7740cc2807ee83360684dca75567129f922c3c1096df5840b0ce5c3921709d75d6cb4fc3b5fd7ea81b460fd7df0419d8d77faa353a6c3646f66690351f5e89c1926131b4e224edb20e7ba47cd60a8dfe512b56270e1c38dd153a61bf2ebeec8310a6748eb29ef606304b87ea6d079ad40493a4a1a94038779a0f5e57418db4cc0d4ee9eca4645ec3eab57c2f4d38c21737bb06413c10676383be5248be89d485c69a81aaac352cad00ea27ddd68a6c12db0bb879f141ec214450a20cee41fafa156a2024b769ef9a8a205ec7a7d92cfe7d428a20a6fbfaacdbf81f4514414eff5751ea927edf6728a20aa7f8f4082bffd9bea55288069e9e1ff00552a6be3f70a2880a9fdfec52eafbfa28a2021f9f5283fd3e01451000d7c02a7e87afe55a882ff00ddd5bf64a6e9e254510151dfa22ada28a208cd4f8a37fe3eea288037f128dbf333f9beea2883d8a8a2883fffd9),
(4, 4, 'AngryQueen100\r\n', 'aqueen98@hotmail.com  ', '68374684685', 'Data entry and web design', 0xffd8ffe000104a46494600010100000100010000ffdb0084000a0708161615181616161818181a1c181a1a1c191a1c1a1e1f1f1c1e1c1c1c1a1c1c1c212e251c1e2b211c1c2638262b2f313535351a243b403b343f2e343531010c0c0c06060610060610311d161d3131313131313131313131313131313131313131313131313131313131313131313131313131313131313131313131313131ffc000110800e100e103012200021101031101ffc4001b00000203010101000000000000000000000203000104050607ffc4003d10000103020403060501060602030000000100021103210412314151617105228191b1f01332a1c1d1e10614627292f123334252b2c215823453d2ffc40014010100000000000000000000000000000000ffc40014110100000000000000000000000000000000ffda000c03010002110311003f00f49fb438b70c43c073c0cc059c6341c1735f8979119dc7ff0063bf8ad3fb49ff00c8abfcc3d02e635c76ba0a7e2ea83f3bfccfe53b0d8ca9bbddfd45677be7d3f552444193705039fda750921c5d1d4a5b31ef23287bff00a8fe565c4d439b5024c0ea89ad0d8b8fd7920df4b14f02ef77f5140dc63f3139dd16d09b78caccfabe292c7c79e9d50745b8b788efbbfa8fe5418b79905ef1c1d98f8f42b167d8f9ab620e8d4c73da00cee33fc452cf68d5d9efeb98f96ab9d5ab0303784c2f916f70837d1c7d49f9dd3fcc7f296fc5559f9dff00d47f2b2527b7593e298f70941aa8e3aa0d6a3cff00ec7f29f4b1cf2273bad6f98fe5729f5af1a884c618236d10748e32a5e5ef038663f941fbf3e7e77ff51f7bacc1e5c396c67594b76a834d1ed2a844e6789e2e3b5b8f24c1da1507fadfd731f49e2b066e4898f1a787de106c38fa8347bffa8a652c7d49ff0031f7db31e5cd602f8249b0e1eaa52a883a553b56a82d602f2e759bdf22fac5cad95b1751b6739ec736ce6971fce8b8b5aab5e435cdd890e98bce839db546eab326492752e249d206bd020da7b49e4902abcc6b0e76bc35d55b71f53ffb1f3fccefcae3e1d9924da5c64c137da4f130b4fc441a998cab9b31a8f0348cee82363ad8a737b41e6ff11fc7e677d6eb9e1e4933a5a2fea98d283d97fe47f8bdf9ab5cec83de651070ff0068aa0189ab3221df6175c9fde1a4183c1747f6a9b388abb77bcf45c7c3511de0e235b459035c38217be0c4a6388d2129cd9ba0b0e90503e0472d1469e3aaa1aeb6f7a2020a834f50a17c9b6df35bc91008206cf0d9134c5f449c617774346a61dc871f294e8b2006500e39a62fa22f83799b735094dcdc782002cd3d15bc3a34f05726e743109cd77193bfbf1408a74e209178840da462013aee7eab65079c803fe68bc7e122b57d804154ea6521a34d7f298f59899d2cb5b59613ac6c8298dd4949ff00c930180d9d7f52998930ceab9cca1fea0099b79ee83a61cd7dc1d3ee85c3e8b0b1c58e006f65d1adcf740a6fa1544755038f011cb75645bdca02e6a8bc024f017505d0811616d6fc3920d01f69893780374c8bf2294d944ea85a1b20924c18bc4ee7920f591eeea20f89d3e9f9510717f68181d88ab06f9a23815c87614ebeedf75a3f6a71cefde5ec65b2d425ce3ef40870a7b905c5ce2499312677409784b79b4e82e9af024dfe883210469179e3cbc1067a45d7cd1d47a2637a593c522547b20a0531801249d637e0abe20984c7d130244c7bb2ce69409126503432493ef82b63654a462013736b79df828d78037f5d505b609b74e4868b4c10493ef656c6dc9b7bdd1804e882db7df4374ccb7e481fdd83304d951a97b92503a604eab1fc59b2d46a8f940b190679f04ac80586881791a1baa3c357efc4db4e293f0cdefa9909b86a61a731df4fca0d555936db82c029b9a61a3a2d4eaa73104c4e88dc487420c986c319976bc16b7954099403725c0dcc72e5cd05017b2587e6b8d9c5b6bcc591c01a1deffa23a7036d6f6402d0078fb856ca426784fd7d5106df8dd53441df540d6b131b55b98b26f00f5e281cf2d1c7edd5228d6713311afbf441ebf37b9fd144c9770fa1510790fda1a60626b10c971a9793dd83112b98cee1cce70738bb51e30005e8fb7da1f5ea348905ce93d345c0786b097bf2922c1a3edc4a0e96a24800ac6ead0f2c2d2604976dd161c3621ef7077cad1a09d79b8eebad5d8601036ba0dfd9389a327e366cbfc226791dc7e8b2d67b4939640921b9b58d89e7a2c05b17bab9e7e680a9577b9ce2e606b4086f38df94f054f7cf2b28d249b1b5edc7ddd5b8dd010306c95657088140424f044c6c734242b63c20cd88adde8cba11051d5783046c8ab531ade4f9217b08905b6b1067edb20a983256aa45a459269d31109cc1008df40801f9a6c0658eb79578ff0095a409235e6adcf82a4eba7341cca75b35468769b8e0bb158efb247c36139a04f1d15bdd6dca02246b20421009888fcab6b7d10b4eb62351740d2c9545cd024f97d123e310e20931681c129bc05ca0dcdbb647bdd01304189dbf559f09521d04c8256aaec3a8fd50138c83f459f0ee03685a5afcad93b71591f8b974c5b641eeff00793c47905693e1e9f851079fed977f8f53f9ddeab998bc1e78235d085d0edb3fe3d43fc6ef55918f31283998863c12c6021e352469ce56ec0bb2b031c733f73af994ec631ef6776d6b91a91fed95c4c3bde5c06514d90e6c81de37bc9d7541d8ad4e02ce769db44786c5b4c30cc816241823aa2aade52250288bde47bdd48d82270e885a79a0224f8206b80d39d930b6d7bd8d9468169082980917b7bd11064f9a30ac8164021fc08f5ea8aab8c18198ce87aedcd5001a3975445ed3a20a0ed2e01d821718bf042ea40bb345c0844582e7d50544dd43be881c46d1ef9216993f540d9005fa282c6da40fd55145f74160dd5542667ebcba7554d6907f5567aa020c0626e806144933a9479ac4a93b04155b0ec200d083208306468adf224936d917b2aded908280cda81a05670ad3c10d368f7c53986f1aea83d5e4e67eaa2d19397bf3510793ed9a9fe354b68f7ffc96071e0b776bba2b54d4cbdfb7f11581c2fb20751af93e6332602c9570cc325ae277ef73d426e2584b65b16999418068b667c73361e7c502aa576332cea3e5b6bc8755ada439b6b48dfc965c5767f7c3def240bcdbc004231f26c21b303fdc79c20d0ea7f440c07c13dccb471f3492d17f7e080a5ba4c9d51b19c00b4a5b29b666d78df82a7104fbe28283035cd2e74b9d6e5fa2d6eb026121a01bc584edf54c7bbbb628315578cd253c5301d3363b2486449225329d3f21a2036b20ccf82a7f7499d3512516524dfdceca16ca043626624db65a8c44c40b2cf7ba463e9bce4ca6235e0506c201920c8e0adad3c1061d85a1a0907894e79da267c875416596940446dbca5d2ce0b8bdcd20dc0022394f0459e764161deb0adad976681c10b4199999561b1ea80c9822daa3df979a53582677ea990814f82725f4990b450601e294c60dad332881816d507bac9eecad0dfdca883c876a7f9d50f07bff00e45734eaba7daa62ad43fc6fff00915cc7826387bd503a93f6379f70b9bda9802f2083948917d16d603aa7541373c1067a5409a6d1198b040933e278acacc300666fb1ff00f2ba14bbb3bea86bd3b5905517826397b083122c2278ca0a369023af05a437334c091d371aa0c4499b6fee169653e5d511c3e582751a28d66e81f8cacd6b035bf31d7f0b0d231cc5a536a3338b0d374387cb79d9068762193943503cc9b78a531a734802e53ea5ccfd020a60f7f94df87627df82ca6a5c026206837e3f6487b9d20026fcf641a9ae698bef1fdd68af4f3340d82c75e908976b1faabc03e64493d74414693416813209204faa7017274d2dd3fba22c837df74b0c37bef3fa2037b84489f1fc2531b7275e48e3557a4f30816d39a751062f6d382302eacbb6dfd50b840f24167ec8dc39a11af878a996c07d7ec80b291b7be289a3fb217d3980792631b97fbcfd107b683ee3f2a26e51ee1441e33b57fcc78fe37fa9584b617471f4cbaabff9dfff0022b20ab4f364ce27d4ee1027c947029df0c8d442455796e801bdfa71e682808bea8e9c93c95b448b21cf69027c500e23085833477009fd162c0f68bf38310c13bc085dc359af61639b2d32bcde2a83db5030446c0e91f7b20f46d0ca80b98640e3aace5b0248cb7dfaacfd9d8e0dee06e6738c39de1aa98a74839a6468836b1bae58e7ba1fdd5ba9200bdfd12e954204710b1d76458bb531aa0dcd2c0358bee9249cd60082b29a44f7601b05b70ec8171bd904c4615a5b33047fd8e9f4496522600b45bcd6c7b733729d24696d1269c87f0d9027114c825a6f238ad184a640b8e89ee60993e2915ab98b71e85047b094394ea8608d13a98b73ba057254f9f046f1efc5096f336ba085b08634b2336e6a39c2500e5b7344f201ba948f78c88e1bf9a2ad723ea82e278fbfba2a6d9296d7fbf444310003124dacdd420f739bdc9fc288b27b82a20f1fdb6fcaf7089ccf76f1173c179c760a48d2d799dd74ff00686a3be2bb866769d7458b0f58be0377247141bb0d5df90870d343f659ea124f92e8086b32efbee5657b071e48250078c423a82cb3b2c7529c049d50330cc93d568ed3c1b5ec80407da0ae736b3a4c1803ea8a8621ce93ac18d771aa0a630533958329dddccaba3886547419046e458ad956887b2f63b1fb1e4b0fc12c75c401a7141adf85394861da01d74f7f54aa98497f284b3da2e6886e9d375a1f5738696b86691238a0830ed17f0490e880341a23a95ef948ef082639a49768501d56b8e9e1d568a0d200cd72954de2dac22c63ac45f4e3b710501e796dc46dacdd20d3bacc2ab830bf2efc4919792df4487005bc344196b08dee9b86daea54c393cb74ca4ccb6937082e93359235b5b6e696d82d167349e234d754d7d4cb1dd26f16f551ec39a439d1796da399414f65a499482d32674dbc87dd3de3693b21734f041190a422cb6d38aa9841325818f046d7981683a91b216cce89c19c2c83dc65f7dd51147bf61441e371e1a5efcc01ef3bd4ae6d2788ee8208246804906345aab839dfcdce3d2e525cd924201cb7240b9f542f784ccba8f3598b0cdc580d677e101009780d2e769eec89efeec81a9b8298ea248d240db8dac945c48823c902cb04c6933a2d34da0080d80b3d1372533e24c80e3efaa063ebe46926e6f005c9b48808dc73b1a09227cc4ace5f3aeaa7c56b60937903f4412bd00cf9b4d0745cec43e3296024cd8aecd5a42a3729f09d17231542a32c343bc683971941b3b3a4b8e60334093bdb62b63a9c4d8ae460ea16be4183f85d8c376835f21c7426fa587040b6b20c98b04a6373bdd23bb1f31f41c9753f766bdb670b7383e2b1d7c03f344198f0e88068c0919bba05ed23fba6e01cd2c2e03723fb714fa582000917e03a688ea38680587aa0ccea82f7ba81bcd66f80ecd3b2d4c278581f1414470beca9ee8b94ca6cdf409eca126ed32831498cd076b7f744ed2daaec37030d922def65cac5f68d3a64863731df5b20cada864378defc27ea9c44fbf45a5d4c39ad7e5891a7094bc9640a6a6d2fa8dd08170136932fa6e83ddc1f72a2764e4a20f9fd6777dd6dcedceeb3bd97f73c96caacef3a48d4ff00648b5edf9408f8424913245fec81e22e765a329438ca4724b6fc50617e20ede10a51792209067dc25993b2ac3b64cf037941a5f8603448753e6b53c4b4b67af9ab81c106760e72ac11a422c84c0f1baa653b98107440598ad25c1cdcaeb8e9e8b2d2a19440d3afe53d949b21c4dc4c5f8ea831bf005a1c45e2e08d7a1585945e18d689927c86a7ecbbd87ed1639e58c32f6ebc96eaa33b622f7208e28386c25a209ef1813b58c9fa2e8e07b65c5f948cc341ca375588ecc7baed824348117b9d4faae7bb0ee6819ad36e1d507a3aef0e639f4dc018241226c2e6cb9eec430b33873600ef13a08d7a2cf86c4e46e844ff00c761e2ba745ed7d32d7b201078406911e1641c87e307c46d3024961a85d3602c05b795b07dd72301fb3d5d8e738d568612035cd873cb19f209221a23aaefb698cc816600bea741f74146a16ba4defa1b78acf8b743e60db41a6aa37045a4bf3c822627cd0331755ce1de7bd9df76a66676601a9fa0596b506924876968758cf4d576f0795eccbb936275046e170712031ef63f3b9cd77f28e837841d7c0d40f6e43048e03f284b05813ec247679ccf80dca60de49d6dbad2ea1049cd2743b20ce05f5ba7d11713c76401a0dcea0a3c3fcde20a0f7d954470a20f9cd46105d3ac9f5fec94e63f33634d0822f11c574711598d790e8d498f4d12062a746c6dfa83c1003e1b19cc4e9ba3763a90b6a0f2d567ed0a44baf7e1c163c824c81ba0e8bd94dcd869cbcb540708d68117fbf358b0ef173c23f55d2c3d5ced26d62832bd9ad90161892b6165e64a1ab48b8478ca0ce18ac5244d61b703a28f61d889e77d5003698b0f2fc263c40e3c15b1a446fcd31ace9e3c1067a541adef0680e76a74f34ca756e8eab24c6a2dba16b38f97e1068a554876be09b558da9f37cdb1fb2ca01024ea9f46c35f041cdc6e09f3394c082781be92340b8bda18aaaecb4dd2dcee02441dee275d17b6a588d8c106c677596b765527bc3da3be24b6fdd077b6c833fef590063346e56f8ee9b4bb4439e59972c1899b1f7748a749cd710e16682e33feed9739ad738378b9c5d33c4a0ecf6961888304c83137817fbaca19fe1c9379168d9557ed1787002f91d9435d31110495a30d8da6e2439a5864013deb1df920676530e76c9dd733b50b8d67e627537e40c05bb118e63333691ccf044b88b01be5dc958b13221d01c0c733d502bb200355ad133326d36deebbb8f7b448e697d9d870c69a8d9ef0d0ea8711ded36b71e6816d31a0db7e28e8b7bc2fc10116b0f0e53aa65071ce2db833641efe14521441f3ec7e1407b9dadcacd4aa5ec3a427e27152f7b78923eab296c5879ee81bfbc1e444de522bb0b9d99b1a7ca3ecaf201324f2dd6c63400d88ea5023078211245cecb532831a5b6d39ec7554f7c6fef8248a9a9e36d2f1d78203655b3a5ba4c44dc2a6569d6c96c61988d55be8ed3f840e001983ba4b8785d3708cee9254736473dbf0801ad3752a39ad817bdf7f556fa81800b6674868e9afaac552b1712d264b44c041bf0cf6bc9681a7b9461adbf7a22cb3f668b49b584a1c8d24907c0a079823593a29419a9e4566c33c34dc7285b9a00d7ea100668b4804c6ff0044da660dbc501683789d11658f7f440f30e696bb43f759a861e930b416b8e5300925593c7c12cbe65a6dcd02b1f8574bdec82d0264ebcecb9d85a0eee170209bdd7630cf22d2b63f12d3a816b20e0d5c21f8a041ef48883a471f25a70581744381001b4eb07eab7e23184ef6d167c35539a4c917e283657ab3bc0d964aac01a4892e22df72ade769f67644277940aa14f283acf3bf55a6830483bca5b1c4ead8dd3685321c2f37941ee5445ef75683e7989677dc66f27d75595ed831795d673067333e3d4e8935bb3f35e6facfd9060701a008293c8742dadc03c1302fbcfaa3a7d947e676b698409732fa79a402078f15db7526f09090fc1b241036418e93e4591b19173b9dd6ca584ca49991cbe8b2e28973b2e9250666e2c97775b037b5ec53ded1e775586c3dcdcc047529c1d8a0a73c00604c787548c1e1bbcf73846675afab6169a6ccdd36d930d316db820c58b6106da5a120bba4aea9a21db5f407c7740cc2807ee83360684dca75567129f922c3c1096df5840b0ce5c3921709d75d6cb4fc3b5fd7ea81b460fd7df0419d8d77faa353a6c3646f66690351f5e89c1926131b4e224edb20e7ba47cd60a8dfe512b56270e1c38dd153a61bf2ebeec8310a6748eb29ef606304b87ea6d079ad40493a4a1a94038779a0f5e57418db4cc0d4ee9eca4645ec3eab57c2f4d38c21737bb06413c10676383be5248be89d485c69a81aaac352cad00ea27ddd68a6c12db0bb879f141ec214450a20cee41fafa156a2024b769ef9a8a205ec7a7d92cfe7d428a20a6fbfaacdbf81f4514414eff5751ea927edf6728a20aa7f8f4082bffd9bea55288069e9e1ff00552a6be3f70a2880a9fdfec52eafbfa28a2021f9f5283fd3e01451000d7c02a7e87afe55a882ff00ddd5bf64a6e9e254510151dfa22ada28a208cd4f8a37fe3eea288037f128dbf333f9beea2883d8a8a2883fffd9);

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_email` varchar(320) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`user_id`, `user_name`, `user_email`) VALUES
(1, 'Afnan_sayed4234', 'afsayed65@hotmail.com'),
(2, 'rimaislam98', 'rimaislam1@outlook.com'),
(3, 'gazifr6590', 'gazifariya43@protonmail.com'),
(4, 'AngryQueen100', 'aqueen98@hotmail.com'),
(5, 'Big Bomb', 'bg0022@gmail.com'),
(6, 'user_name', 'email'),
(7, 'Hersch Gorini', 'hgorini6@ucoz.com'),
(8, 'Felicdad Koppes', 'fkoppes7@comcast.net'),
(10, 'Debor Stribbling', 'dstribbling0@fema.gov'),
(11, 'Editha Reville', 'ereville1@usgs.gov'),
(12, 'Marshal Adshad', 'madshad2@privacy.gov.au'),
(13, 'Aharon Antonin', 'aantonin3@unesco.org'),
(14, 'Vaughn Scarffe', 'vscarffe4@uol.com.br'),
(15, 'Carolann Shippam', 'cshippam5@unc.edu'),
(16, 'Sheff Ferrario', 'sferrario6@miibeian.gov.cn'),
(17, 'Clerc Probin', 'cprobin7@eepurl.com'),
(18, 'Darill Brightie', 'dbrightie8@hc360.com'),
(19, 'Henka Peffer', 'hpeffer9@globo.com'),
(772, 'var char', 'VC123@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_tbl`
--
ALTER TABLE `account_tbl`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `apply_job_tbl`
--
ALTER TABLE `apply_job_tbl`
  ADD PRIMARY KEY (`apply_job_id`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `bulk_email_tbl`
--
ALTER TABLE `bulk_email_tbl`
  ADD PRIMARY KEY (`bulk_email_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `company_tbl`
--
ALTER TABLE `company_tbl`
  ADD PRIMARY KEY (`company_id`);
ALTER TABLE `company_tbl` ADD FULLTEXT KEY `IX_Company_name` (`company_name`);

--
-- Indexes for table `jobs_tbl`
--
ALTER TABLE `jobs_tbl`
  ADD PRIMARY KEY (`job_id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `user_id` (`user_id`);
ALTER TABLE `jobs_tbl` ADD FULLTEXT KEY `IX_vacancy` (`position`);

--
-- Indexes for table `log_in_tbl`
--
ALTER TABLE `log_in_tbl`
  ADD PRIMARY KEY (`log_in_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `profile_tbl`
--
ALTER TABLE `profile_tbl`
  ADD PRIMARY KEY (`profile_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `read_message_tbl`
--
ALTER TABLE `read_message_tbl`
  ADD PRIMARY KEY (`read_message_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `registration_form_tbl`
--
ALTER TABLE `registration_form_tbl`
  ADD PRIMARY KEY (`regi_id`),
  ADD KEY `account_id` (`account_id`);
ALTER TABLE `registration_form_tbl` ADD FULLTEXT KEY `IX_name` (`first_name`,`last_name`);

--
-- Indexes for table `search_user_tbl`
--
ALTER TABLE `search_user_tbl`
  ADD PRIMARY KEY (`search_user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `send_message_tbl`
--
ALTER TABLE `send_message_tbl`
  ADD PRIMARY KEY (`send_message_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `update_profile_tbl`
--
ALTER TABLE `update_profile_tbl`
  ADD PRIMARY KEY (`update_profile_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD PRIMARY KEY (`user_id`);
ALTER TABLE `user_tbl` ADD FULLTEXT KEY `IX_user_name` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_tbl`
--
ALTER TABLE `account_tbl`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `apply_job_tbl`
--
ALTER TABLE `apply_job_tbl`
  MODIFY `apply_job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bulk_email_tbl`
--
ALTER TABLE `bulk_email_tbl`
  MODIFY `bulk_email_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `company_tbl`
--
ALTER TABLE `company_tbl`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs_tbl`
--
ALTER TABLE `jobs_tbl`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `log_in_tbl`
--
ALTER TABLE `log_in_tbl`
  MODIFY `log_in_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `profile_tbl`
--
ALTER TABLE `profile_tbl`
  MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `read_message_tbl`
--
ALTER TABLE `read_message_tbl`
  MODIFY `read_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `registration_form_tbl`
--
ALTER TABLE `registration_form_tbl`
  MODIFY `regi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `search_user_tbl`
--
ALTER TABLE `search_user_tbl`
  MODIFY `search_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `send_message_tbl`
--
ALTER TABLE `send_message_tbl`
  MODIFY `send_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `update_profile_tbl`
--
ALTER TABLE `update_profile_tbl`
  MODIFY `update_profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_tbl`
--
ALTER TABLE `user_tbl`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=773;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_tbl`
--
ALTER TABLE `account_tbl`
  ADD CONSTRAINT `account_tbl_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_tbl` (`user_id`);

--
-- Constraints for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  ADD CONSTRAINT `admin_tbl_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_tbl` (`user_id`);

--
-- Constraints for table `apply_job_tbl`
--
ALTER TABLE `apply_job_tbl`
  ADD CONSTRAINT `apply_job_tbl_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `jobs_tbl` (`job_id`);

--
-- Constraints for table `bulk_email_tbl`
--
ALTER TABLE `bulk_email_tbl`
  ADD CONSTRAINT `bulk_email_tbl_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin_tbl` (`admin_id`);

--
-- Constraints for table `jobs_tbl`
--
ALTER TABLE `jobs_tbl`
  ADD CONSTRAINT `jobs_tbl_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company_tbl` (`company_id`),
  ADD CONSTRAINT `jobs_tbl_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_tbl` (`user_id`);

--
-- Constraints for table `log_in_tbl`
--
ALTER TABLE `log_in_tbl`
  ADD CONSTRAINT `log_in_tbl_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_tbl` (`user_id`);

--
-- Constraints for table `profile_tbl`
--
ALTER TABLE `profile_tbl`
  ADD CONSTRAINT `profile_tbl_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_tbl` (`user_id`);

--
-- Constraints for table `read_message_tbl`
--
ALTER TABLE `read_message_tbl`
  ADD CONSTRAINT `read_message_tbl_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_tbl` (`user_id`);

--
-- Constraints for table `registration_form_tbl`
--
ALTER TABLE `registration_form_tbl`
  ADD CONSTRAINT `registration_form_tbl_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account_tbl` (`account_id`);

--
-- Constraints for table `search_user_tbl`
--
ALTER TABLE `search_user_tbl`
  ADD CONSTRAINT `search_user_tbl_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_tbl` (`user_id`);

--
-- Constraints for table `send_message_tbl`
--
ALTER TABLE `send_message_tbl`
  ADD CONSTRAINT `send_message_tbl_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_tbl` (`user_id`);

--
-- Constraints for table `update_profile_tbl`
--
ALTER TABLE `update_profile_tbl`
  ADD CONSTRAINT `update_profile_tbl_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_tbl` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
