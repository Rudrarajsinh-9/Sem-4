CREATE TABLE Artists 
(
 Artist_id INT PRIMARY KEY,
 Artist_name NVARCHAR(50)
);

INSERT INTO Artists (Artist_id, Artist_name) VALUES
(1, 'Aparshakti Khurana'),
(2, 'Ed Sheeran'),
(3, 'Shreya Ghoshal'),
(4, 'Arijit Singh'),
(5, 'Tanishk Bagchi');

select * from Artists 

CREATE TABLE Albums (
 Album_id INT PRIMARY KEY,
 Album_title NVARCHAR(50),
 Artist_id INT,
 Release_year INT,
 FOREIGN KEY (Artist_id) REFERENCES Artists(Artist_id)
);
INSERT INTO Albums (Album_id, Album_title, Artist_id, Release_year) VALUES (1007, 'Album7', 1, 2015),
(1001, 'Album1', 1, 2019),
(1002, 'Album2', 2, 2015),
(1003, 'Album3', 3, 2018),
(1004, 'Album4', 4, 2020),
(1005, 'Album5', 2, 2020),
(1006, 'Album6', 1, 2009);select * from AlbumsCREATE TABLE Songs (
 Song_id INT PRIMARY KEY,
 Song_title NVARCHAR(50),
 Duration DECIMAL(4, 2),
 Genre NVARCHAR(50),
 Album_id INT,
 FOREIGN KEY (Album_id) REFERENCES Albums(Album_id)
);

INSERT INTO Songs (Song_id, Song_title, Duration, Genre, Album_id) VALUES
(101, 'Zaroor', 2.55, 'Feel good', 1001),
(102, 'Espresso', 4.10, 'Rhythmic', 1002),
(103, 'Shayad', 3.20, 'Sad', 1003),
(104, 'Roar', 4.05, 'Pop', 1002),
(105, 'Everybody Talks', 3.35, 'Rhythmic', 1003),
(106, 'Dwapara', 3.54, 'Dance', 1002),
(107, 'Sa Re Ga Ma', 4.20, 'Rhythmic', 1004),
(108, 'Tauba', 4.05, 'Rhythmic', 1005),
(109, 'Perfect', 4.23, 'Pop', 1002),
(110, 'Good Luck', 3.55, 'Rhythmic', 1004);

select * from Songs



--1. Retrieve a unique genre of songs.
SELECT DISTINCT genre
FROM songs;

--2. Find top 2 albums released before 2010.
select top 2 album_title from Albums where Release_year > 2010;

--3. Insert Data into the Songs Table. (1245, ‘Zaroor’, 2.55, ‘Feel good’, 1005)
insert into songs values(1245,'Zaroor', 2.55, 'Feel good', 1005);
select * from albums

--4. Change the Genre of the song ‘Zaroor’ to ‘Happy’
update songs
set genre = 'happy'
where Song_title = 'zaroor';

-- 5. Delete an Artist ‘Ed Sheeran’
delete from artists where Artist_name = 'Ed Sheeran';

--6 Add a New Column for Rating in Songs Table. [Ratings decimal(3,2)]
alter table Songs add Rating decimal(3,2);

--7 Retrieve songs whose title starts with 'S'
select * from Songs where Song_title like 'S%';

--8 Retrieve all songs whose title contains 'Everybody'
select * from Songs where Song_title like'%Everybody%';

--9 Display Artist Name in Uppercase
select upper(Artist_name) from Artists;

--10 Find the Square Root of the Duration of a Song  ‘Good Luck’
select sqrt(Duration) from Songs where Song_title = 'Good Luck';

--11. Find Current Date.
select getdate();

--12. Find the number of albums for each artist.
select count (album_id) from songs

--13. Retrieve the Album_id which has more than 5 songs in it.
select album_id from songs where song_id > 5;

--14. Retrieve all songs from the album 'Album1'. (using Subquery)
select song_title from songs where album_id 
in (select album_id from albums where album_title = 'Album1');

--15. Retrieve all albums name from the artist ‘Aparshakti Khurana’ (using Subquery)
select album_title from albums
where artist_id in (select artist_id from artists
where Artist_name = 'Aparshakti Khurana');

SELECT SONG_TITLE,ALBUMS.ALBUM_TITLE FROM SONGS JOIN ALBUMS ON SONGS.ALBUM_ID=ALBUMS.ALBUM_ID

--17 Find all the songs which are released in 2020.
SELECT SONG_TITLE FROM SONGS 
WHERE ALBUM_ID IN (SELECT ALBUM_ID FROM ALBUMS WHERE Release_year=2020)

--18 Create a view called ‘Fav_Songs’ from the songs table having songs with song_id 101-105. 
CREATE VIEW Fav_Songs
AS 
SELECT * FROM SONGS WHERE SONG_ID BETWEEN 101 AND 105

--19 Update a song name to ‘Jannat’ of song having song_id 101 in Fav_Songs view.
UPDATE Fav_Songs
SET Song_title='Jannat'
where song_id=101

--20 Find all artists who have released an album in 2020.
SELECT Artist_name FROM Artists
WHERE Artist_ID in (SELECT Artist_ID FROM ALBUMS WHERE Release_year=2020)

--21 Retrieve all songs by Shreya Ghoshal and order them by duration.
SELECT Songs.SONG_TITLE 
FROM Songs 
JOIN Albums ON Songs.Album_id = Albums.Album_id 
JOIN Artists ON Artists.Artist_id = Albums.Artist_id 
WHERE Artists.Artist_name = 'Shreya Ghoshal' 
ORDER BY Songs.DURATION;
