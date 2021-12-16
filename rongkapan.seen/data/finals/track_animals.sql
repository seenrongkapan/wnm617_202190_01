-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 15, 2021 at 09:38 PM
-- Server version: 5.6.51-cll-lve
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zeenzone_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `track_animals`
--

CREATE TABLE `track_animals` (
  `id` int(13) NOT NULL,
  `user_id` int(13) NOT NULL,
  `name` varchar(64) NOT NULL,
  `breed` varchar(64) NOT NULL,
  `gender` varchar(64) NOT NULL,
  `color` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `uniqueness` text NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_animals`
--

INSERT INTO `track_animals` (`id`, `user_id`, `name`, `breed`, `gender`, `color`, `description`, `uniqueness`, `img`, `date_create`) VALUES
(1, 2, 'Genmy', 'Golden Retreiver', 'Male', 'Yellow', 'Amet velit fugiat cupidatat ullamco do id tempor consectetur laboris commodo excepteur. Lorem culpa dolor voluptate ut ad ea ea aliquip. Excepteur pariatur consectetur tempor sit ex do excepteur in aliqua duis.', 'Ipsum voluptate est aute fugiat ut Lorem sint nostrud.', 'https://via.placeholder.com/400/905/fff/?text=Genmy', '2020-02-07 02:17:03'),
(2, 5, 'Hairport', 'Blood Hound', 'Female', 'Brown', 'Excepteur velit consequat non laborum minim dolor enim minim consectetur. Amet laboris qui sit laboris adipisicing do aliquip esse aliqua irure laboris incididunt aute duis. Excepteur eu ullamco laborum adipisicing nisi esse aute id ipsum ipsum exercitation.', 'Do eiusmod ullamco deserunt non cupidatat laborum exercitation.', 'https://via.placeholder.com/400/860/fff/?text=Hairport', '2020-11-09 11:22:04'),
(3, 6, 'Polarax', 'Labrador Retreiver', 'Female', 'Yellow', 'Proident deserunt voluptate proident dolore ut sint ea eiusmod minim. Eu aliqua cupidatat nisi esse incididunt elit culpa veniam irure mollit incididunt amet cupidatat sunt. Reprehenderit anim sint est quis occaecat ipsum.', 'Sit consectetur ut dolor tempor consequat dolor laborum dolore nostrud.', 'https://via.placeholder.com/400/882/fff/?text=Polarax', '2021-02-19 01:42:13'),
(4, 10, 'Adornica', 'Poodle', 'Male', 'Brown', 'Fugiat est ut ullamco nostrud excepteur et elit incididunt ad proident anim do id tempor. Incididunt sunt ex sit commodo anim aliqua. Ea exercitation cupidatat proident occaecat excepteur elit cillum minim cillum proident incididunt Lorem anim ipsum.', 'Sint fugiat qui reprehenderit veniam dolor nostrud.', 'https://via.placeholder.com/400/906/fff/?text=Adornica', '2021-02-17 01:49:18'),
(5, 3, 'Jimbies', 'Blood Hound', 'Male', 'Brown', 'Elit nulla duis in officia nulla consequat adipisicing quis exercitation nisi sunt. Ad in exercitation reprehenderit aliquip sint amet id minim occaecat. Elit incididunt est cupidatat nostrud dolore cillum.', 'Sit fugiat sint id esse.', 'https://via.placeholder.com/400/905/fff/?text=Jimbies', '2021-08-15 11:15:14'),
(6, 1, 'Portica', 'Poodle', 'Male', 'Brown', 'Elit nisi ut sint amet nulla velit nostrud aliquip elit velit velit tempor sit eiusmod. Sit ipsum quis aliqua do labore proident fugiat fugiat adipisicing enim. Culpa deserunt aute eu ad.', 'Elit ullamco est enim consequat.', 'https://via.placeholder.com/400/819/fff/?text=Portica', '2021-08-03 08:39:26'),
(7, 3, 'Sentia', 'Blood Hound', 'Male', 'White', 'Qui proident culpa aliqua occaecat exercitation. Fugiat pariatur elit nostrud nulla nulla est voluptate ut. Occaecat do exercitation nulla reprehenderit dolor nisi aliquip.', 'Pariatur laborum et elit cupidatat irure cupidatat.', 'https://via.placeholder.com/400/927/fff/?text=Sentia', '2021-04-04 12:17:12'),
(8, 4, 'Zentime', 'Samoyed', 'Male', 'Brown', 'Enim proident tempor proident magna. Occaecat non elit excepteur Lorem adipisicing. Sint laboris tempor veniam elit est commodo excepteur non non do exercitation veniam.', 'Anim elit excepteur culpa eiusmod id quis aute aute.', 'https://via.placeholder.com/400/746/fff/?text=Zentime', '2021-02-28 08:23:54'),
(9, 9, 'Netagy', 'Blood Hound', 'Female', 'Brown', 'Incididunt voluptate fugiat in velit ipsum nostrud id eiusmod. Enim reprehenderit do ea enim in commodo quis sunt velit consequat adipisicing nulla adipisicing. Non labore exercitation occaecat do tempor culpa et.', 'Est velit sint sit anim laborum adipisicing aliqua tempor.', 'https://via.placeholder.com/400/730/fff/?text=Netagy', '2020-04-30 11:18:06'),
(10, 7, 'Magnemo', 'Poodle', 'Female', 'Black and White', 'Elit ad occaecat et duis ex eu Lorem in labore fugiat nisi aliquip. Esse sint est enim aute cupidatat voluptate et officia consequat dolore aliqua. Excepteur deserunt ipsum anim ut ex ad voluptate aute.', 'Elit Lorem dolore sint culpa.', 'https://via.placeholder.com/400/792/fff/?text=Magnemo', '2020-07-13 03:30:41'),
(11, 4, 'Applidec', 'Samoyed', 'Female', 'Brown', 'Laborum enim consequat ipsum sit in ad exercitation. Elit reprehenderit laboris exercitation veniam. Do esse pariatur ullamco excepteur nisi eiusmod ut elit voluptate ut in elit.', 'Cupidatat magna cillum proident adipisicing incididunt elit Lorem.', 'https://via.placeholder.com/400/904/fff/?text=Applidec', '2021-06-20 11:48:15'),
(12, 10, 'Extremo', 'Samoyed', 'Male', 'Brown', 'Labore velit cupidatat ipsum ut reprehenderit esse. Aute mollit in cupidatat culpa eu non irure velit irure consequat aliqua cillum et. Ad consequat veniam irure elit aute pariatur adipisicing enim ad deserunt esse.', 'Ullamco non qui ullamco elit fugiat do commodo in fugiat adipisicing excepteur in tempor nostrud.', 'https://via.placeholder.com/400/985/fff/?text=Extremo', '2020-01-16 07:26:15'),
(13, 4, 'Acrodance', 'Poodle', 'Male', 'Black', 'Tempor minim laborum exercitation ut ipsum nulla. Occaecat consectetur adipisicing laboris anim occaecat dolor cupidatat adipisicing incididunt consequat. Amet pariatur officia nulla deserunt elit do commodo dolor mollit anim dolore duis.', 'Sunt adipisicing do ut id tempor elit cupidatat ex mollit excepteur.', 'https://via.placeholder.com/400/786/fff/?text=Acrodance', '2020-12-01 12:02:29'),
(14, 9, 'Digiprint', 'Labrador Retreiver', 'Male', 'Brown', 'Consequat pariatur enim exercitation nostrud esse. Reprehenderit sint velit in occaecat consectetur id irure sit exercitation laboris adipisicing sit pariatur eiusmod. Amet laborum consequat dolor nostrud sit deserunt adipisicing labore cupidatat et exercitation consectetur reprehenderit.', 'Quis eu elit exercitation voluptate minim aliqua eiusmod ex aliquip nulla ea nulla commodo.', 'https://via.placeholder.com/400/815/fff/?text=Digiprint', '2020-10-12 11:39:36'),
(15, 1, 'Hyplex', 'Blood Hound', 'Female', 'Brown', 'Incididunt id culpa nulla ad tempor Lorem qui proident consequat occaecat esse eiusmod. In ullamco labore id magna irure consequat quis sit amet ad enim. Aliqua fugiat dolore sunt quis ex anim eu nisi incididunt mollit.', 'Adipisicing et esse magna et officia et ea elit ea cupidatat aliquip culpa minim.', 'https://via.placeholder.com/400/976/fff/?text=Hyplex', '2020-10-07 08:54:39'),
(16, 7, 'Overplex', 'Poodle', 'Male', 'White', 'Est ea culpa amet ullamco laboris officia pariatur proident sunt consequat excepteur. Amet culpa velit magna culpa velit sit magna et. Duis ipsum sit exercitation laboris est sit enim fugiat ea culpa cillum esse id sunt.', 'Laboris et id irure est enim anim qui velit tempor id.', 'https://via.placeholder.com/400/912/fff/?text=Overplex', '2020-08-30 07:37:01'),
(17, 10, 'Hotcakes', 'Blood Hound', 'Female', 'Yellow', 'Nulla adipisicing proident id consectetur et. Cillum officia officia quis culpa id aute esse esse esse. Consectetur est ex Lorem aute nulla occaecat enim minim adipisicing nostrud aliquip ex Lorem ex.', 'Do aute nostrud mollit cillum aliquip nostrud sunt excepteur est veniam consequat.', 'https://via.placeholder.com/400/997/fff/?text=Hotcakes', '2021-06-23 04:12:34'),
(18, 5, 'Xixan', 'Golden Retreiver', 'Male', 'White', 'Culpa sit tempor cupidatat pariatur laborum mollit excepteur exercitation. Aliqua duis in irure aliqua ut mollit culpa veniam consectetur sint aliquip. Consectetur laboris dolor laboris magna nostrud.', 'In excepteur labore fugiat aute.', 'https://via.placeholder.com/400/947/fff/?text=Xixan', '2021-03-14 10:27:14'),
(19, 3, 'Zyple', 'Samoyed', 'Male', 'Black and White', 'Deserunt id non qui in voluptate excepteur aliquip officia. Dolore ullamco officia excepteur commodo elit ipsum consequat do officia Lorem elit sit aute elit. Irure reprehenderit qui exercitation officia dolore enim dolor ut aute Lorem exercitation excepteur.', 'Minim nostrud elit labore fugiat occaecat minim ad culpa.', 'https://via.placeholder.com/400/898/fff/?text=Zyple', '2021-08-06 11:11:23'),
(20, 4, 'Perkle', 'Poodle', 'Male', 'Black', 'Consequat pariatur amet eu id non et duis sint incididunt ad id duis aute. Nulla laborum voluptate eiusmod ullamco ipsum veniam elit qui ea fugiat eiusmod ad. Cillum id eiusmod aliqua exercitation nostrud sit exercitation nisi incididunt.', 'Quis non ullamco Lorem voluptate id magna aute non enim nulla ea labore.', 'uploads/1639022943.4353_photo-1579549653905-093738b1f6a1.jpeg', '2020-11-13 05:40:44'),
(21, 3, 'Navir', 'Samoyed', 'Female', 'Brown', 'Labore laborum labore excepteur veniam magna minim dolor. Aliquip labore officia consectetur magna dolore quis sunt et dolore magna esse deserunt. Cupidatat nulla quis qui consequat labore id id aute nulla sint mollit.', 'Sunt Lorem consequat eu magna eiusmod adipisicing elit cillum aute ex mollit anim aliquip sint.', 'https://via.placeholder.com/400/862/fff/?text=Navir', '2020-01-10 05:58:13'),
(22, 2, 'Extro', 'Golden Retreiver', 'Male', 'Black and White', 'Labore ad proident fugiat quis exercitation excepteur reprehenderit reprehenderit anim. Id velit occaecat tempor consequat aute ipsum ea minim ea ea nisi aliquip aliquip. Pariatur aute dolore ad sit elit.', 'Quis ut aliqua sint nisi sunt est elit eu id elit esse aliqua.', 'https://via.placeholder.com/400/831/fff/?text=Extro', '2021-06-19 04:41:41'),
(23, 8, 'Gallaxia', 'Samoyed', 'Female', 'Brown', 'Et laborum duis magna id consequat sint incididunt ex est. Laboris consequat ad reprehenderit ullamco labore proident. Veniam reprehenderit id non amet.', 'Et incididunt enim quis non ipsum sunt qui.', 'https://via.placeholder.com/400/712/fff/?text=Gallaxia', '2020-12-08 02:23:28'),
(24, 6, 'Eventix', 'Golden Retreiver', 'Female', 'Black and White', 'Proident velit esse veniam duis ullamco et laborum dolor. Cupidatat amet adipisicing aute mollit irure aute irure eu magna commodo adipisicing officia est ad. Deserunt veniam Lorem voluptate enim ipsum minim sit sint sit cupidatat laborum duis.', 'Dolor quis pariatur ea enim exercitation eiusmod excepteur sunt do nisi irure et adipisicing nulla.', 'https://via.placeholder.com/400/898/fff/?text=Eventix', '2020-01-10 09:11:30'),
(25, 2, 'Sultraxin', 'Poodle', 'Female', 'Brown', 'Enim non ea elit magna minim esse qui irure ad. Sunt veniam amet reprehenderit labore ullamco sint nulla fugiat occaecat non mollit proident enim. Reprehenderit sint Lorem consequat exercitation enim do labore enim dolore laborum et.', 'Voluptate ad sint elit Lorem dolore ullamco ullamco sunt reprehenderit adipisicing.', 'https://via.placeholder.com/400/813/fff/?text=Sultraxin', '2021-01-25 02:18:57'),
(26, 7, 'Zilphur', 'Blood Hound', 'Female', 'Black', 'Deserunt et ullamco consequat id sit minim sunt quis ipsum nisi. Ad velit voluptate nulla Lorem id excepteur officia eu. Reprehenderit est consequat laboris elit duis occaecat incididunt dolore nostrud veniam aliqua velit irure id.', 'Velit consectetur culpa aliqua nostrud eu nostrud Lorem.', 'https://via.placeholder.com/400/969/fff/?text=Zilphur', '2020-02-17 03:48:17'),
(27, 4, 'Kiggle', 'Poodle', 'Female', 'Black and White', 'Pariatur irure dolor eiusmod non exercitation duis deserunt commodo. Sit ex ut aute esse et aute quis tempor pariatur et adipisicing Lorem. Ut adipisicing aute anim ex enim do.', 'Veniam sunt magna velit velit labore tempor cupidatat nostrud pariatur veniam nisi cupidatat aute.', 'https://via.placeholder.com/400/923/fff/?text=Kiggle', '2020-07-07 02:25:20'),
(28, 5, 'Rocklogic', 'Samoyed', 'Female', 'Yellow', 'Incididunt proident consectetur dolore aute ea consectetur et excepteur pariatur. Culpa qui quis esse culpa. Excepteur esse occaecat dolore commodo sit amet aute occaecat dolor mollit non sunt dolore mollit.', 'In est et deserunt mollit duis proident veniam laboris cillum culpa aliquip.', 'https://via.placeholder.com/400/905/fff/?text=Rocklogic', '2020-01-04 11:51:33'),
(29, 4, 'Acumentor', 'Golden Retreiver', 'Female', 'Black and White', 'Commodo officia irure et voluptate cupidatat ut. Anim eiusmod non reprehenderit elit exercitation esse esse laboris pariatur qui consectetur. Nulla sunt nulla occaecat irure laborum exercitation id incididunt irure ex mollit non.', 'Anim voluptate aliquip eiusmod Lorem qui esse.', 'https://via.placeholder.com/400/938/fff/?text=Acumentor', '2021-02-26 10:58:40'),
(30, 8, 'Comvene', 'Labrador Retreiver', 'Female', 'Black', 'Nostrud adipisicing ad dolor esse id irure culpa veniam. Exercitation ea tempor do elit aliqua officia voluptate culpa. Commodo aute aute nisi non.', 'Adipisicing non nulla proident ex reprehenderit.', 'https://via.placeholder.com/400/780/fff/?text=Comvene', '2021-07-15 11:57:57'),
(31, 6, 'Synkgen', 'Blood Hound', 'Male', 'Yellow', 'Lorem laborum ut non dolore id nisi. Sit sit nostrud culpa incididunt ipsum commodo ad. Ut ea irure pariatur minim do laborum reprehenderit reprehenderit proident aliquip.', 'Deserunt aute sunt nisi culpa enim eiusmod magna laboris aliqua nostrud consectetur irure qui.', 'https://via.placeholder.com/400/825/fff/?text=Synkgen', '2021-07-07 07:03:51'),
(32, 3, 'Netplode', 'Blood Hound', 'Male', 'Black and White', 'Qui nostrud labore ex amet. Magna cupidatat exercitation anim ea ad consequat. Duis eiusmod pariatur eiusmod nulla in officia aliqua.', 'Sint anim ullamco aliqua excepteur veniam officia qui do eiusmod.', 'https://via.placeholder.com/400/786/fff/?text=Netplode', '2020-09-06 01:25:24'),
(33, 8, 'Stelaecor', 'Poodle', 'Male', 'Yellow', 'Duis esse ad proident voluptate ut deserunt ullamco anim deserunt occaecat duis. Lorem id non proident ea. Commodo irure est veniam enim velit culpa dolore exercitation magna mollit.', 'Ex sit dolor tempor laboris sunt proident minim sit.', 'https://via.placeholder.com/400/992/fff/?text=Stelaecor', '2020-08-21 06:44:20'),
(34, 3, 'Senmei', 'Samoyed', 'Male', 'Yellow', 'Aute ipsum ullamco ut cupidatat tempor dolore amet ea amet sit. Aliquip id sunt reprehenderit laboris elit nulla in irure. Nisi ea cillum quis ullamco.', 'Magna id ad laborum ipsum minim elit non cupidatat laboris est aliqua veniam duis.', 'https://via.placeholder.com/400/730/fff/?text=Senmei', '2021-05-22 10:13:38'),
(35, 3, 'Zidant', 'Golden Retreiver', 'Female', 'Yellow', 'In quis do ut Lorem dolor exercitation. Fugiat voluptate sit et consectetur. Commodo officia eu incididunt in quis nostrud labore dolore ea qui.', 'Laborum consectetur aute cupidatat commodo incididunt qui.', 'https://via.placeholder.com/400/806/fff/?text=Zidant', '2021-09-25 02:41:01'),
(36, 8, 'Zilodyne', 'Blood Hound', 'Female', 'Black', 'Lorem sint proident reprehenderit non officia. Consequat cupidatat sit culpa ad ad in non ex consequat pariatur. Aliqua mollit fugiat quis non fugiat non sint eiusmod excepteur nulla velit nostrud in qui.', 'Ex irure consectetur commodo eu dolor exercitation eu velit esse dolor veniam anim.', 'https://via.placeholder.com/400/887/fff/?text=Zilodyne', '2021-05-08 05:16:09'),
(37, 7, 'Exposa', 'Blood Hound', 'Male', 'Black and White', 'Eu consequat nisi reprehenderit laboris mollit aliquip. Lorem exercitation deserunt eu tempor ad et in enim nostrud reprehenderit sunt quis. Qui et est adipisicing sit ullamco adipisicing deserunt do est quis id.', 'Id est amet pariatur dolor tempor tempor duis sunt Lorem ex laboris eiusmod sunt mollit.', 'https://via.placeholder.com/400/812/fff/?text=Exposa', '2020-12-31 04:23:24'),
(38, 6, 'Equicom', 'Golden Retreiver', 'Female', 'Black and White', 'Non adipisicing non irure aliqua Lorem dolore adipisicing. Exercitation tempor nulla nostrud exercitation officia fugiat labore sunt velit aliquip. Elit sint officia dolore ut est anim aliqua consectetur proident nisi cupidatat amet dolore.', 'Laboris nisi est minim dolore.', 'https://via.placeholder.com/400/849/fff/?text=Equicom', '2021-11-27 07:40:47'),
(39, 1, 'Cyclonica', 'Labrador Retreiver', 'Female', 'Black and White', 'Ullamco commodo fugiat in enim ex. Nulla cillum quis excepteur ex veniam. Cillum cupidatat ex anim sunt proident enim aute nisi ea ullamco cupidatat proident cupidatat eu.', 'Ut ea do et sit eiusmod nostrud ex laboris irure magna.', 'https://via.placeholder.com/400/835/fff/?text=Cyclonica', '2020-08-08 01:50:39'),
(40, 2, 'Rodeocean', 'Blood Hound', 'Female', 'Black', 'Incididunt nostrud proident commodo anim labore ad. Enim culpa veniam qui tempor veniam aliquip laborum culpa consequat commodo dolore reprehenderit est mollit. Eu mollit ullamco id culpa.', 'Consectetur enim Lorem aliquip ut.', 'https://via.placeholder.com/400/807/fff/?text=Rodeocean', '2021-05-21 03:12:37'),
(41, 5, 'Brainquil', 'Labrador Retreiver', 'Female', 'White', 'Elit exercitation reprehenderit dolor reprehenderit ad duis sit nisi velit. Laborum nulla non sit qui deserunt magna consectetur cillum mollit aliqua ullamco culpa. Incididunt eiusmod sint incididunt tempor elit excepteur culpa proident excepteur.', 'Magna irure aliqua nisi minim.', 'https://via.placeholder.com/400/780/fff/?text=Brainquil', '2020-08-02 03:25:14'),
(42, 5, 'Motovate', 'Poodle', 'Male', 'Black', 'Incididunt et cillum veniam pariatur excepteur cillum id irure minim. Cupidatat do qui id velit aute dolore eiusmod sint magna nisi et nisi. Esse voluptate sunt anim aliqua aliquip ullamco cupidatat amet incididunt ex laborum esse ut anim.', 'Ad incididunt dolore ea enim.', 'https://via.placeholder.com/400/870/fff/?text=Motovate', '2020-12-31 06:29:42'),
(43, 1, 'Shadease', 'Golden Retreiver', 'Female', 'White', 'Proident reprehenderit commodo quis sit. Tempor cupidatat dolor tempor voluptate tempor. Nulla adipisicing consectetur dolore ut.', 'Commodo labore nostrud reprehenderit non.', 'https://via.placeholder.com/400/841/fff/?text=Shadease', '2020-02-23 06:35:09'),
(44, 9, 'Klugger', 'Golden Retreiver', 'Male', 'Black and White', 'Excepteur reprehenderit Lorem id sit ex cupidatat enim deserunt non. Ut voluptate qui fugiat aliqua anim nisi eu sit aute non. Ullamco enim officia excepteur cillum nostrud sit aliqua ullamco officia adipisicing reprehenderit cupidatat magna fugiat.', 'Cupidatat sunt sunt Lorem do incididunt mollit aliquip nostrud eiusmod.', 'https://via.placeholder.com/400/850/fff/?text=Klugger', '2021-09-01 11:40:08'),
(45, 9, 'Izzby', 'Poodle', 'Female', 'Black', 'Ad aliquip ut ut ex. Amet adipisicing anim excepteur minim. Reprehenderit dolore sunt cillum consequat pariatur.', 'Officia aute dolor sint deserunt id ullamco dolor ut anim voluptate et laboris voluptate ex.', 'https://via.placeholder.com/400/836/fff/?text=Izzby', '2020-12-17 06:10:20'),
(46, 6, 'Hivedom', 'Golden Retreiver', 'Male', 'Black and White', 'Minim quis in proident elit aliqua. Exercitation ad adipisicing in cupidatat. Pariatur pariatur sunt proident nisi culpa esse.', 'Mollit sint excepteur consectetur ad culpa ad qui ad.', 'https://via.placeholder.com/400/919/fff/?text=Hivedom', '2020-09-13 08:12:54'),
(47, 8, 'Zillacom', 'Poodle', 'Female', 'Black', 'Fugiat occaecat labore proident labore aliquip ad dolore consectetur veniam adipisicing. Mollit sunt elit laborum consequat esse eiusmod aliqua amet in Lorem incididunt veniam. Et Lorem deserunt ea velit.', 'Eiusmod ut occaecat magna exercitation qui reprehenderit aliquip cillum in consequat tempor qui laboris ex.', 'https://via.placeholder.com/400/788/fff/?text=Zillacom', '2020-08-22 08:27:29'),
(48, 5, 'Tellifly', 'Blood Hound', 'Female', 'Brown', 'Qui elit est consectetur laborum anim voluptate. Reprehenderit sit enim elit aliqua minim velit et. Commodo commodo velit labore commodo anim.', 'Mollit adipisicing aliqua dolor sint magna mollit adipisicing consequat exercitation laborum Lorem duis.', 'https://via.placeholder.com/400/886/fff/?text=Tellifly', '2021-08-18 11:28:50'),
(49, 1, 'Isologia', 'Golden Retreiver', 'Male', 'White', 'Nostrud incididunt anim aliquip minim amet tempor minim minim consequat exercitation tempor culpa voluptate veniam. Pariatur aliqua laboris in fugiat sit sit consequat irure anim do amet veniam. Aliqua ullamco cillum enim veniam incididunt tempor labore magna mollit labore ad occaecat et.', 'Officia pariatur amet nisi ex consectetur aliquip adipisicing ut enim ex sit ad anim culpa.', 'https://via.placeholder.com/400/935/fff/?text=Isologia', '2021-01-25 05:36:30'),
(50, 6, 'Zilencio', 'Golden Retreiver', 'Female', 'Black', 'Amet Lorem Lorem aute anim laborum sit labore cupidatat enim consequat. Do ea quis minim labore eiusmod ipsum cupidatat. Cillum anim elit consequat anim ad duis minim ex reprehenderit Lorem aute.', 'Dolore elit dolor labore sit quis sint cillum ipsum ipsum ipsum.', 'https://via.placeholder.com/400/809/fff/?text=Zilencio', '2020-09-23 09:23:40'),
(64, 15, 'Watson', 'Golden Retriever', 'Male', 'White', 'He\'s a very good boy', 'Certified Therapy Dog', 'uploads/1639614931.6646_watson-1.jpeg', '2021-12-15 17:27:13'),
(65, 17, 'Scooby', 'Great Dane', 'Male', 'Brown', 'He a very big dog!', 'He fights crimes and lives in mystery van', 'uploads/1639618454.3548_brown-great-dane.jpeg', '2021-12-15 18:34:07'),
(66, 17, 'Watson', 'Golden Retriever', 'Male', 'White', 'He\'s has a very fluffy tail and smiley face.', 'He can give hugs on command and is a certified therapy dog.', 'uploads/1639618618.0262_watson-1.jpeg', '2021-12-15 18:36:02'),
(67, 17, 'Josie', 'Mutt', 'Female', 'Brown', 'She\'s a rescue. Have a very serious face even when asking for a belly rub.', 'She can climbs wall in her backyard.', 'uploads/1639618717.4704_IMG_7798.JPG', '2021-12-15 18:38:12'),
(68, 17, 'Tyson', 'Golden Huskey', 'Male', 'Grey', 'His tail and body shapes looks like a golden, but he has huskey eyes and color', 'He is a golden mixed with huskey! He could howl like a husky, but play like a golden.', 'uploads/1639618877.2087_tyson.jpeg', '2021-12-15 18:41:02'),
(70, 17, 'Luna', 'Labrador Retriever', 'Female', 'Cream', 'She a slim looking lab! ', 'I think she has a very thick neck like a F1 drivers. LOL', 'uploads/1639619151.2625_dog1.JPG', '2021-12-15 18:45:02'),
(71, 17, 'Munchie', 'Pug', 'Female', 'Black', 'She\'s very small. Still a young puppy', 'Run side ways', 'uploads/1639619244.0606_Black-Pug-Running.jpeg', '2021-12-15 18:47:11'),
(72, 17, 'Finn', 'Golden Retriever', 'Male', 'Brown', 'Big golden boy that loves balls more than anything', 'Manage to look derpy from any angle', 'uploads/1639619465.372_006AEF6E-BE70-4C9A-BB8D-3A526866658C.JPG', '2021-12-15 18:48:49'),
(73, 17, 'Reese', 'Frenchie', 'Female', 'Black & White', 'Looks like a tiny cow', 'Obsessed with sniffing other dogs\' butts!', 'uploads/1639619583.9096_Reese.jpeg', '2021-12-15 18:52:48'),
(74, 17, 'Koda', 'Dachshund', 'Male', 'Brown', 'Long hair Dachshund', 'Try to outrun the big dogs', 'uploads/1639619857.7896_Longhaired-Dachshund-standing-outdoors.jpeg', '2021-12-15 18:57:18'),
(75, 17, 'Cooper', 'Golden Retriever', 'Male', 'Brown', 'He\'s a classic golden retriever that LOVES balls', 'Serial ball chaser and try to fit as many balls in his mouth as possible', 'uploads/1639621068.3304_1000509-finley.webp', '2021-12-15 19:17:37'),
(76, 17, 'Baloo', 'Doodle', 'Male', 'Brown', 'Very big fluffy golden doodle. Sit very patiently for his owner to get a sandwich. Very good boi', 'The owner says he loves posing for photos', 'uploads/1639624294.0626_IMG_8818.JPG', '2021-12-15 20:11:19'),
(77, 19, 'Watson', 'Golden Retriever', 'Male', 'White', 'He\'s fluffy', 'He\'s a very good boiii', 'uploads/1639628464.8289_watson-1.jpeg', '2021-12-15 21:20:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_animals`
--
ALTER TABLE `track_animals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track_animals`
--
ALTER TABLE `track_animals`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
