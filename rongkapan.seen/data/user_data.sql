CREATE TABLE IF NOT EXISTS `track_users` (
`id` INT NULL,
`name` VARCHAR(MAX) NULL,
`username` VARCHAR(MAX) NULL,
`email` VARCHAR(MAX) NULL,
`password` VARCHAR(MAX) NULL,
`img` VARCHAR(MAX) NULL,
`date_create` VARCHAR(MAX) NULL
);

INSERT INTO track_users VALUES
(1,'Amelia Cash','user1','user1@gmail.com',md5("pass"),'https://via.placeholder.com/400/800/fff/?text=user1','2021-04-17 02:56:30'),
(2,'Bowen Buchanan','user2','user2@gmail.com',md5("pass"),'https://via.placeholder.com/400/792/fff/?text=user2','2020-10-22 01:10:18'),
(3,'Willie Peck','user3','user3@gmail.com',md5("pass"),'https://via.placeholder.com/400/829/fff/?text=user3','2020-02-20 11:11:22'),
(4,'Rosemarie Willis','user4','user4@gmail.com',md5("pass"),'https://via.placeholder.com/400/911/fff/?text=user4','2020-01-05 06:39:08'),
(5,'Dianne Mcgowan','user5','user5@gmail.com',md5("pass"),'https://via.placeholder.com/400/769/fff/?text=user5','2021-09-16 01:19:57'),
(6,'Lessie Schroeder','user6','user6@gmail.com',md5("pass"),'https://via.placeholder.com/400/894/fff/?text=user6','2020-06-23 05:07:03'),
(7,'Jenny Gonzales','user7','user7@gmail.com',md5("pass"),'https://via.placeholder.com/400/717/fff/?text=user7','2020-08-21 10:55:39'),
(8,'Collins Stokes','user8','user8@gmail.com',md5("pass"),'https://via.placeholder.com/400/795/fff/?text=user8','2021-06-13 02:28:06'),
(9,'Cochran Levy','user9','user9@gmail.com',md5("pass"),'https://via.placeholder.com/400/705/fff/?text=user9','2020-05-18 10:17:08'),
(10,'Hines Diaz','user10','user10@gmail.com',md5("pass"),'https://via.placeholder.com/400/852/fff/?text=user10','2021-07-30 10:47:53');