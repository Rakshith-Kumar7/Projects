create database Grosvenor_hotel
use Grosvenor_hotel
#creating tables
CREATE TABLE hotel ( hotel_no CHAR(4) NOT NULL primary key, name VARCHAR(50) NOT NULL, address
VARCHAR(50) NOT NULL);
CREATE TABLE room ( room_no VARCHAR(4) NOT NULL , hotel_no CHAR(4) not null,  type CHAR(1)
NOT NULL, price DECIMAL(5,2) NOT NULL);
ALTER TABLE room
ADD FOREIGN KEY (hotel_no) REFERENCES hotel(hotel_no),
ADD PRIMARY KEY (room_no);

CREATE TABLE booking (hotel_no CHAR(4) NOT NULL, guest_no CHAR(4) NOT NULL, date_from
DATETIME NOT NULL, date_to DATETIME NULL, room_no CHAR(4) NOT NULL);
ALTER TABLE booking
ADD FOREIGN KEY (room_no) REFERENCES room(room_no);


CREATE TABLE guest ( guest_no CHAR(4) NOT NULL, name VARCHAR(20) NOT NULL, address
VARCHAR(50) NOT NULL);

ALTER TABLE guest
ADD PRIMARY KEY (guest_no);

#inserting values to hotel table
INSERT INTO hotel VALUES ('H111', 'Grosvenor Hotel', 'London');
INSERT INTO hotel VALUES ('H112', 'The Chester Grosvenor', 'Chester');
INSERT INTO hotel VALUES ('H113', 'JW Marriott Grosvenor House', 'London');
INSERT INTO hotel VALUES ('H114', 'Grosvenor Pulford Hotel & Spa', 'Pulford');
INSERT INTO hotel VALUES ('H115', 'The Grosvenor Arms', 'Shaftesbury');

#inserting values to room table
INSERT INTO room VALUES ('1', 'H111', 'S', 72.00);
INSERT INTO room VALUES ('2', 'H111', 'D',105.00);
INSERT INTO room VALUES ('3', 'H111', 'F',  200.00);
INSERT INTO room VALUES ('4', 'H111', 'D', 105.00);
INSERT INTO room VALUES ('5', 'H111', 'F', 200.00);
INSERT INTO room VALUES ('6', 'H111', 'S',  200.00);
INSERT INTO room VALUES ('7', 'H112', 'D', 120.00);
INSERT INTO room VALUES ('8', 'H112', 'F', 250.00);
INSERT INTO room VALUES ('9', 'H112', 'S', 85.00);
INSERT INTO room VALUES ('10', 'H112', 'F', 250.00);
INSERT INTO room VALUES ('11', 'H112', 'D', 120.00);
INSERT INTO room VALUES ('12', 'H113', 'S', 100.00);
INSERT INTO room VALUES ('13', 'H113', 'F', 350.00);
INSERT INTO room VALUES ('14', 'H113', 'D', 175.00);
INSERT INTO room VALUES ('15', 'H113', 'S', 100.00);
INSERT INTO room VALUES ('16', 'H113', 'D', 175.00);
INSERT INTO room VALUES ('17', 'H114', 'S', 85.00);
INSERT INTO room VALUES ('18', 'H114', 'D', 150.00);
INSERT INTO room VALUES ('19', 'H114', 'F', 225.00);
INSERT INTO room VALUES ('20', 'H114', 'S', 85.00);
INSERT INTO room VALUES ('21', 'H114', 'D',150.00);
INSERT INTO room VALUES ('22', 'H115', 'F', 400.00);
INSERT INTO room VALUES ('23', 'H115', 'D', 200.00);
INSERT INTO room VALUES ('24', 'H115', 'S', 125.00);
INSERT INTO room VALUES ('25', 'H115', 'D', 200.00);
INSERT INTO room VALUES ('26', 'H115', 'F', 400.00);

#inserting values to guest table
INSERT INTO guest VALUES ('G111', 'Guest--1', 'London');
INSERT INTO guest VALUES ('G112', 'Guest-2', 'Paris');
INSERT INTO guest VALUES ('G113', 'Guest-3', 'NewYork');
INSERT INTO guest VALUES ('G114', 'Guest-4', 'Dubai');
INSERT INTO guest VALUES ('G115', 'Guest-5', 'New Delhi');
INSERT INTO guest VALUES ('G116', 'Guest-6', 'Mumbai');
INSERT INTO guest VALUES ('G117', 'Guest-7', 'New Delhi');
INSERT INTO guest VALUES ('G118', 'Guest-8', 'Hyderabad');
INSERT INTO guest VALUES ('G119', 'Guest-9', 'Bangalore');
INSERT INTO guest VALUES ('G120', 'Guest-10', 'Pune');
INSERT INTO guest VALUES ('G121', 'Guest-11', 'Dubai');
INSERT INTO guest VALUES ('G122', 'Guest-12', 'London');
INSERT INTO guest VALUES ('G123', 'Guest-13', 'Paris');
INSERT INTO guest VALUES ('G124', 'Guest-14', 'Dhaka');
INSERT INTO guest VALUES ('G125', 'Guest-15', 'Sydney');
INSERT INTO guest VALUES ('G126', 'Guest-16', 'Dallas');
INSERT INTO guest VALUES ('G127', 'Guest-17', 'New York');
INSERT INTO guest VALUES ('G128', 'Guest-18', 'Austria');
INSERT INTO guest VALUES ('G129', 'Guest-19', 'Denmark');
INSERT INTO guest VALUES ('G130', 'Guest-20', 'Beijing');
INSERT INTO guest VALUES ('G131', 'Guest-21', 'Tokyo');
INSERT INTO guest VALUES ('G132', 'Guest-22', 'London');
INSERT INTO guest VALUES ('G133', 'Guest-23', 'New York');
INSERT INTO guest VALUES ('G134', 'Guest-24', 'Beijing');
INSERT INTO guest VALUES ('G135', 'Guest-25', 'Bangalore');
INSERT INTO guest VALUES ('G136', 'Guest-26', 'Chennai');


#insert value for booking table
INSERT INTO booking VALUES ('H111', 'G111', DATE'2022-06-27', DATE'2022-07-04', '1');
INSERT INTO booking VALUES ('H111', 'G136', DATE'2022-06-26', DATE'2022-07-03', '3');
INSERT INTO booking VALUES ('H111', 'G135', DATE'2022-06-25', DATE'2022-07-05', '6');
INSERT INTO booking VALUES ('H111', 'G134', DATE'2022-06-24', DATE'2022-07-02', '4');
INSERT INTO booking VALUES ('H111', 'G132', DATE'2022-06-22', DATE'2022-07-01', '5');
INSERT INTO booking VALUES ('H115', 'G131', DATE'2022-06-22', DATE'2022-07-01', '2');
INSERT INTO booking VALUES ('H112', 'G112', DATE'1999-03-13', DATE'1999-03-19', '7');
INSERT INTO booking VALUES ('H112', 'G112', DATE'1999-08-13', DATE'1999-08-18', '8');
INSERT INTO booking VALUES ('H112', 'G112', DATE'1999-03-13', DATE'1999-03-17', '9');
INSERT INTO booking VALUES ('H112', 'G112', DATE'1999-08-15', DATE'1999-08-22', '10');
INSERT INTO booking VALUES ('H112', 'G112', DATE'1999-08-14', DATE'1999-03-21', '11');
INSERT INTO booking VALUES ('H113', 'G113', DATE'2000-04-18', DATE'2000-04-23', '13');
INSERT INTO booking VALUES ('H113', 'G113', DATE'2000-08-17', DATE'2000-08-25', '12');
INSERT INTO booking VALUES ('H113', 'G113', DATE'2000-05-12', DATE'2000-05-24', '15');
INSERT INTO booking VALUES ('H113', 'G113', DATE'2000-08-15', DATE'2000-08-20', '14');
INSERT INTO booking VALUES ('H113', 'G113', DATE'2000-08-16', DATE'2000-08-21', '16');
INSERT INTO booking VALUES ('H114', 'G114', DATE'2000-08-12', DATE'2000-08-18', '18');
INSERT INTO booking VALUES ('H114', 'G114', DATE'2000-04-17', DATE'2000-04-23', '19');
INSERT INTO booking VALUES ('H114', 'G114', DATE'2000-08-10', DATE'2000-08-16', '20');
INSERT INTO booking VALUES ('H114', 'G114', DATE'2000-05-20', DATE'2000-05-29', '17');
INSERT INTO booking VALUES ('H114', 'G114', DATE'2000-08-06', DATE'2000-08-13', '21');
INSERT INTO booking VALUES ('H115', 'G115', DATE'2000-07-01', DATE'2000-07-15', '22');
INSERT INTO booking VALUES ('H115', 'G115', DATE'2000-08-01', DATE'2000-06-04','23');
INSERT INTO booking VALUES ('H115', 'G115', DATE'2000-06-04', DATE'2000-08-11', '24');
INSERT INTO booking VALUES ('H115', 'G115', DATE'2000-08-03', DATE'2000-06-11', '25');
INSERT INTO booking VALUES ('H111', 'G131', DATE'2000-08-01', DATE'2000-06-08', '26');


select * from hotel;
select * from room;
select * from guest;
select * from booking;

#Update

SET SQL_SAFE_UPDATES = 0;

UPDATE room SET price = price*1.05;

CREATE TABLE booking_old 
( hotel_no CHAR(4) NOT NULL, guest_no CHAR(4) NOT NULL,
 date_from DATETIME NOT NULL, date_to DATETIME NULL, room_no VARCHAR(4) NOT NULL);

INSERT INTO booking_old (SELECT * FROM booking WHERE date_to < DATE'2000-01-01');
 DELETE FROM booking WHERE date_to < DATE'2000-01-01' ;
 
 #Simple Queries
#1. List full details of all hotels
select * from hotel

#2. List full details of all hotels in London
select * from hotel where address = 'london';
select * from hotel where address like 'London';

#3. List the names and addresses of all guests in London, alphabetically ordered by name
select Name, address from guest where address = 'london' order by name asc;

#4. List all double or family rooms with a price below £40.00 per night, in ascending order of price.
select room_no, type,price from room where price < 140.00 order by price asc

# 5. List the bookings for which no date_to has been specified
select * from booking where date_to is null

#Aggregate Functions
#1. How many hotels are there?
select count(hotel_no) 'number of hotel' from hotel

#2. What is the average price of a room?
select avg(price) as 'average price' from room

#3. What is the total revenue per night from all double rooms?
select sum(price) 'total revenue' from room where type = 'D'

#4. How many different guests have made bookings for August?
select count(guest_no) from booking where
monthname(date_to) OR monthname(date_from)='August'

# Subqueries and Joins
# 1. List the price and type of all rooms at the Grosvenor Hotel
select price,type , name from room as r
inner join hotel as h on r.hotel_no = h.hotel_no
where name ='Grosvenor Hotel';

#2. List all guests currently staying at the Grosvenor Hotel.
select * from guest as g 
inner join booking as b  on g.guest_no = b.guest_no
where date_from <= CURRENT_DATE AND
 date_to >= CURRENT_DATE
 
 #3. List the details of all rooms at the Grosvenor Hotel, including the name of the guest staying in the room, if the room is occupied.
select r. room_no, r.hotel_no, r.type,r.price, g.name, b.date_from , b.date_to from room as r
inner join hotel as h on r.hotel_no = h.hotel_no
inner join booking as b on h.hotel_no = b.hotel_no
inner join guest as g on g.guest_no = b.guest_no
where h.name = 'Grosvenor Hotel' and b.date_from <= CURRENT_DATE AND
 b.date_to >= CURRENT_DATE

# 4. What is the total income from bookings for the Grosvenor Hotel today?
select sum(price) from room as r
inner join booking as b on r.room_no = b.room_no
where b.hotel_no = 'H111' and b.date_from = CURRENT_DATE

#5. List the rooms that are currently unoccupied at the Grosvenor Hotel
SELECT r.hotel_no, r.room_no, r.type, r.price
FROM room r , hotel h
WHERE r.hotel_no = h.hotel_no AND
h.name = 'Grosvenor Hotel' AND
room_no NOT IN
	(SELECT room_no
	FROM booking b, hotel h
	WHERE (date_from <= CURRENT_DATE
	AND date_to >= CURRENT_DATE)
	AND b.hotel_no=h.hotel_no
	AND name = 'Grosvenor Hotel');
    
#6. What is the lost income from unoccupied rooms at the Grosvenor Hotel?
SELECT SUM(price)
FROM room r, hotel h
WHERE r.hotel_no = h.hotel_no AND
h.name = 'Grosvenor Hotel' AND
room_no NOT IN
(SELECT room_no FROM booking b, hotel h
WHERE (date_from <= CURRENT_DATE
AND date_to >= CURRENT_DATE) AND
b.hotel_no = h.hotel_no
AND r.hotel_no=b.hotel_no
AND r.room_no=b.room_no
AND h.name = 'Grosvenor Hotel');

# Grouping
# 1. List the number of rooms in each hotel
SELECT  hotel_No, COUNT(distinct room_No) AS count FROM Room
 GROUP BY hotel_No; 
 
 #2. List the number of rooms in each hotel in London.
SELECT address,h.hotel_No, COUNT(room_No) AS 'count of room' FROM Room r, Hotel h
 WHERE r.hotel_No = h.hotel_No AND address = 'London'
 GROUP BY hotel_No;
 


 