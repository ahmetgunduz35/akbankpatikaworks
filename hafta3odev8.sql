-- 1) test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
CREATE TABLE employee (
    id INTEGER,
    name VARCHAR(50),
    birthday DATE,
    email VARCHAR(100)
);

-- 2) Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
INSERT INTO employee (id, name, birthday, email) VALUES
(1, 'Pascale Coase', '1990-01-15', 'pcoase0@umn.edu'),
(2, 'Annnora Olivey', '1985-05-30', 'aolivey1@nasa.gov'),
(3, 'Fina Woollcott', '1992-09-10', 'fwoollcott2@shareasale.com'),
(4, 'Stefano Stretton', '1988-03-22', 'sstretton3@purevolume.com'),
(5, 'Emilio Etuck', '1995-07-14', 'eetuck4@webmd.com'),
(6, 'Emlynne Neenan', '1991-12-05', 'eneenan5@comcast.net'),
(7, 'Yuri Akester', '1993-06-18', 'yakester6@newsvine.com'),
(8, 'Farley Tanner', '1989-09-25', 'ftanner7@indiegogo.com'),
(9, 'Hubey Pagnin', '1994-11-12', 'hpagnin8@blog.com'),
(10, 'Harry Batchelder', '1992-08-08', 'hbatchelder9@istockphoto.com'),
(11, 'Rolf Hissett', '1987-07-07', 'rhissetta@vkontakte.ru'),
(12, 'Dino Rawson', '1986-06-06', 'drawsonb@yellowpages.com'),
(13, 'Penrod Willeman', '1990-05-05', 'pwillemanc@state.tx.us'),
(14, 'Stacy Cadge', '1991-04-04', 'scadged@flickr.com'),
(15, 'Romain Moorrud', '1993-03-03', 'rmoorrude@is.gd'),
(16, 'Jemie Jovasevic', '1992-02-02', 'jjovasevicf@disqus.com'),
(17, 'Christal Izakov', '1990-01-01', 'cizakovg@marriott.com'),
(18, 'Benedikta Mustchin', '1989-12-12', 'bmustchinh@goo.gl'),
(19, 'Loria Picken', '1991-11-11', 'lpickeni@cbc.ca'),
(20, 'Winthrop Tootell', '1992-10-10', 'wtootellj@fastcompany.com'),
(21, 'Rosetta Giacobazzi', '1990-09-09', 'rgiacobazzik@toplist.cz'),
(22, 'Ari Butten', '1988-08-08', 'abuttenl@slashdot.org'),
(23, 'Robinette Tilly', '1993-07-07', 'rtillym@economist.com'),
(24, 'Adora Bracher', '1989-06-06', 'abrachern@china.com.cn'),
(25, 'Wilmar McKinnell', '1991-05-05', 'wmckinnello@ucoz.com'),
(26, 'Ferdy Atwool', '1992-04-04', 'fatwoolp@symantec.com'),
(27, 'Rae Syrie', '1990-03-03', 'rsyrieq@washington.edu'),
(28, 'Suzy Tantrum', '1991-02-02', 'stantrumr@unc.edu'),
(29, 'Davey Seden', '1993-01-01', 'dsedens@theglobeandmail.com'),
(30, 'Juieta Vasyutkin', '1989-12-12', 'jvasyutkint@shop-pro.jp'),
(31, 'Adi Tompkins', '1992-11-11', 'atompkinsu@plala.or.jp'),
(32, 'Sammie Ridgewell', '1991-10-10', 'sridgewellv@prlog.org'),
(33, 'Charline Lainton', '1990-09-09', 'claintonw@plala.or.jp'),
(34, 'Else Francecione', '1988-08-08', 'efrancecionex@shareasale.com'),
(35, 'Chance Phillis', '1993-07-07', 'cphillisy@flickr.com'),
(36, 'Dew Missenden', '1992-06-06', 'dmissendenz@statcounter.com'),
(37, 'Pennie Priter', '1991-05-05', 'ppriter10@ustream.tv'),
(38, 'Allen Stimson', '1990-04-04', 'astimson11@thetimes.co.uk'),
(39, 'Lenore Wilfing', '1989-03-03', 'lwilfing12@blogger.com'),
(40, 'Chad Hanaby', '1992-02-02', 'chanaby13@trellian.com'),
(41, 'Caleb Alderwick', '1991-01-01', 'calderwick14@ycombinator.com'),
(42, 'Shermy Callendar', '1988-12-12', 'scallendar15@sina.com.cn'),
(43, 'Ibby Yole', '1990-11-11', 'iyole16@archive.org'),
(44, 'Archie Padley', '1989-10-10', 'apadley17@stanford.edu'),
(45, 'Reade Hatter', '1992-09-09', 'rhatter18@theatlantic.com'),
(46, 'Judah Lugden', '1991-08-08', 'jlugden19@cnbc.com'),
(47, 'Elset Harbach', '1990-07-07', 'eharbach1a@biglobe.ne.jp'),
(48, 'Pearce Ponde', '1989-06-06', 'pponde1b@newyorker.com'),
(49, 'Evelyn O''Dea', '1992-05-05', 'eodea1c@examiner.com'),
(50, 'Eduardo Obern', '1991-04-04', 'eobern1d@weibo.com');

-- 3) Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE employee SET name='Updated Name' WHERE id=1;
UPDATE employee SET email='new.email@example.com' WHERE name='Annnora Olivey';
UPDATE employee SET birthday='1995-01-01' WHERE id=3;
UPDATE employee SET name='Birthday Updated' WHERE email='fwoollcott2@shareasale.com';
UPDATE employee SET email='combined.update@example.com', name='Combined Update' WHERE id=2 AND birthday='1985-05-30';

-- 4) Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
DELETE FROM employee WHERE id=1;
DELETE FROM employee WHERE name='Annnora Olivey';
DELETE FROM employee WHERE birthday='1992-09-10';
DELETE FROM employee WHERE email='sstretton3@purevolume.com';
DELETE FROM employee WHERE id=2 AND birthday='1985-05-30';
