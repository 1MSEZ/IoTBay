/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  mscov
 * Created: 07/06/2020
 */
--Create schema for IoTBay database
CREATE SCHEMA IOTBAY;

--Drop table for we can start fresh
DROP TABLE IOTBAY.USERS;
--Create table
CREATE TABLE IOTBAY.USERS (
    CUSTOMERID INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 100000, INCREMENT BY 1),
    EMAIL VARCHAR(255),
    FIRSTNAME VARCHAR(255),
    LASTNAME VARCHAR(255),
    PHONE VARCHAR(12),
    PASSWORD VARCHAR(255),
    ACCOUNTTYPE VARCHAR(8),
    PRIMARY KEY (CUSTOMERID)
);

--Drop table for we can start fresh
DROP TABLE IOTBAY.CATALOGUE;
--Create table
CREATE TABLE IOTBAY.CATALOGUE (
    PRODUCTID VARCHAR(30),
    PRODUCTNAME VARCHAR(255),
    PRODUCTTYPE VARCHAR(25),
    PRODUCTDESC VARCHAR(255),
    PRODUCTPRICE real,
    PRODUCTQUANTITY VARCHAR(255),
    PRODUCTAVAILABILITY VARCHAR(255),
    PRIMARY KEY (PRODUCTID)
);

-- Drop table so we can start fresh
DROP TABLE IOTBAY.Payment;
-- Create Payment table
CREATE TABLE IOTBAY.Payment
(
    Payment_ID INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    Customer_ID INT,
    Payment_Type INT DEFAULT 0,
    Card_Name VARCHAR(30),
    Card_Number VARCHAR(30),
    Card_Expiry VARCHAR(10),
    Card_CVV VARCHAR(4),
    PRIMARY KEY (Payment_ID)
);

-- Drop table so we can start fresh
DROP TABLE Shipping;
-- Create table
CREATE TABLE Shipping
(
    Shipping_ID INT NOT NULL GENERATED ALWAYS AS IDENTITY,
    Customer_ID INT,
    Address_Line_1 VARCHAR(200),
    Address_Line_2 VARCHAR(200),
    Country VARCHAR(30),
    State VARCHAR(30),
    Post_Code VARCHAR(30),
    PRIMARY KEY (Shipping_ID)
);


--Insert Sample Data

-- User Sample Data
INSERT INTO IOTBAY.USERS (EMAIL, FIRSTNAME, LASTNAME, PHONE, PASSWORD, ACCOUNTTYPE) VALUES ('bobtamari@gmail.com','Bob','Tamari','0453299545','Btamari123','customer');
INSERT INTO IOTBAY.USERS (EMAIL, FIRSTNAME, LASTNAME, PHONE, PASSWORD, ACCOUNTTYPE) VALUES ('rgupt123@outlook.com','Rangis','Gupta','+61478923333','Rg473@3','customer');
INSERT INTO IOTBAY.USERS (EMAIL, FIRSTNAME, LASTNAME, PHONE, PASSWORD, ACCOUNTTYPE) VALUES ('izzyrox@yahoo.com','Ismael','Freeman','0433777999','Izzyrocks','customer');
INSERT INTO IOTBAY.USERS (EMAIL, FIRSTNAME, LASTNAME, PHONE, PASSWORD, ACCOUNTTYPE) VALUES ('info@bkelectronics.com.au','BK','Electronics','97238888','B@U7euj','customer');
INSERT INTO IOTBAY.USERS (EMAIL, FIRSTNAME, LASTNAME, PHONE, PASSWORD, ACCOUNTTYPE) VALUES ('u8dus7@zoomail.net','Greg','Ranger','+61484737827','biggreg79','customer');
INSERT INTO IOTBAY.USERS (EMAIL, FIRSTNAME, LASTNAME, PHONE, PASSWORD, ACCOUNTTYPE) VALUES ('anonymouse@gmail.com','Anonymous','Mouse','0404040404','Anonymouse1@#','customer');
INSERT INTO IOTBAY.USERS (EMAIL, FIRSTNAME, LASTNAME, PHONE, PASSWORD, ACCOUNTTYPE) VALUES ('blank@hotmail.com','blank','account','+61444000444','password','customer');
INSERT INTO IOTBAY.USERS (EMAIL, FIRSTNAME, LASTNAME, PHONE, PASSWORD, ACCOUNTTYPE) VALUES ('mkyong.100@yahoo.com','Mia','Yong','0297764892','mkyong88172','customer');
INSERT INTO IOTBAY.USERS (EMAIL, FIRSTNAME, LASTNAME, PHONE, PASSWORD, ACCOUNTTYPE) VALUES ('help@biznus.com.au','Biznus','Corp.','98765432','Biznus','customer');
INSERT INTO IOTBAY.USERS (EMAIL, FIRSTNAME, LASTNAME, PHONE, PASSWORD, ACCOUNTTYPE) VALUES ('josiah@aol.com','Josiah','Sanchez','0433728819','josiahisarockstar7','customer');
INSERT INTO IOTBAY.USERS (EMAIL, FIRSTNAME, LASTNAME, PHONE, PASSWORD, ACCOUNTTYPE) VALUES ('creedbratton@iotbay.com.au','Creed','Bratton','0283746352','CreedBratton','staff');
INSERT INTO IOTBAY.USERS (EMAIL, FIRSTNAME, LASTNAME, PHONE, PASSWORD, ACCOUNTTYPE) VALUES ('johnsmith@iotbay.com.au','John','Smith','0288376453','Jsmith123','staff');
INSERT INTO IOTBAY.USERS (EMAIL, FIRSTNAME, LASTNAME, PHONE, PASSWORD, ACCOUNTTYPE) VALUES ('jimhalpert@iotbay.com.au','Jimothy','Halpert','0477382912','Jhalp77','staff');
INSERT INTO IOTBAY.USERS (EMAIL, FIRSTNAME, LASTNAME, PHONE, PASSWORD, ACCOUNTTYPE) VALUES ('pamb@iotbay.com.au','Pamela','Beesly','+61477827635','pb123','staff');
INSERT INTO IOTBAY.USERS (EMAIL, FIRSTNAME, LASTNAME, PHONE, PASSWORD, ACCOUNTTYPE) VALUES ('stanleyhudson@iotbay.com.au','Stanley','Hudson','0297997797','Pretzel779','staff');
INSERT INTO IOTBAY.USERS (EMAIL, FIRSTNAME, LASTNAME, PHONE, PASSWORD, ACCOUNTTYPE) VALUES ('charlesboyle@iotbay.com.au','Charles','Boyle','0400000000','vcqCmWds2y3FSzS','staff');
INSERT INTO IOTBAY.USERS (EMAIL, FIRSTNAME, LASTNAME, PHONE, PASSWORD, ACCOUNTTYPE) VALUES ('michaelscott@iotbay.com.au','Michael','Scott','0499827772','Tobysux247','staff');
INSERT INTO IOTBAY.USERS (EMAIL, FIRSTNAME, LASTNAME, PHONE, PASSWORD, ACCOUNTTYPE) VALUES ('meredithpalmer@iotbay.com.au','Meredith','Palmer','0295361627','Mpalmer23','staff');
INSERT INTO IOTBAY.USERS (EMAIL, FIRSTNAME, LASTNAME, PHONE, PASSWORD, ACCOUNTTYPE) VALUES ('amysantiago@iotbay.com.au','Amy','Santiago','+61422526736','Amysantiago112','staff');
INSERT INTO IOTBAY.USERS (EMAIL, FIRSTNAME, LASTNAME, PHONE, PASSWORD, ACCOUNTTYPE) VALUES ('jakeperalta@iotbay.com.au','Jake','Peralta','0398876352','JPeralta99','staff');

-- Sample Payment Data
INSERT INTO PAYMENT (CUSTOMER_ID, PAYMENT_TYPE, CARD_NAME, CARD_NUMBER, CARD_EXPIRY, CARD_CVV) VALUES (100000, 0, 'Jackie Chan', '4111-4321-5678-8765', '11/2021', '987');
INSERT INTO PAYMENT (CUSTOMER_ID, PAYMENT_TYPE, CARD_NAME, CARD_NUMBER, CARD_EXPIRY, CARD_CVV) VALUES (100001, 0, 'Chuck Norris', '1234-4321-5678-8765', '11/2021', '987');
INSERT INTO PAYMENT (CUSTOMER_ID, PAYMENT_TYPE, CARD_NAME, CARD_NUMBER, CARD_EXPIRY, CARD_CVV) VALUES (100002, 0, 'Chuck Berry', '1234-4321-5678-8765', '11/2021', '987');
INSERT INTO PAYMENT (CUSTOMER_ID, PAYMENT_TYPE, CARD_NAME, CARD_NUMBER, CARD_EXPIRY, CARD_CVV) VALUES (100003, 0, 'Bob Tamari', '1234-4321-5678-8765', '11/2021', '987');
INSERT INTO PAYMENT (CUSTOMER_ID, PAYMENT_TYPE, CARD_NAME, CARD_NUMBER, CARD_EXPIRY, CARD_CVV) VALUES (100004, 0, 'Ned Flanders', '1234-4321-5678-8765', '11/2021', '987');
INSERT INTO PAYMENT (CUSTOMER_ID, PAYMENT_TYPE, CARD_NAME, CARD_NUMBER, CARD_EXPIRY, CARD_CVV) VALUES (100005, 0, 'Hans Moleman', '1234-4321-5678-8765', '11/2021', '987');
INSERT INTO PAYMENT (CUSTOMER_ID, PAYMENT_TYPE, CARD_NAME, CARD_NUMBER, CARD_EXPIRY, CARD_CVV) VALUES (100006, 0, 'Seymour Skinner', '1234-4321-5678-8765', '11/2021', '987');
INSERT INTO PAYMENT (CUSTOMER_ID, PAYMENT_TYPE, CARD_NAME, CARD_NUMBER, CARD_EXPIRY, CARD_CVV) VALUES (100007, 0, 'Ralph Idaho Wigum', '1234-4321-5678-8765', '11/2021', '987');
INSERT INTO PAYMENT (CUSTOMER_ID, PAYMENT_TYPE, CARD_NAME, CARD_NUMBER, CARD_EXPIRY, CARD_CVV) VALUES (100008, 0, 'Lisa Simpson', '1234-4321-5678-8765', '11/2021', '987');
INSERT INTO PAYMENT (CUSTOMER_ID, PAYMENT_TYPE, CARD_NAME, CARD_NUMBER, CARD_EXPIRY, CARD_CVV) VALUES (100009, 0, 'Bart Simspon', '1234-4321-5678-8765', '11/2021', '987');
INSERT INTO PAYMENT (CUSTOMER_ID, PAYMENT_TYPE, CARD_NAME, CARD_NUMBER, CARD_EXPIRY, CARD_CVV) VALUES (100010, 0, 'Lenny ', '1234-4321-5678-8765', '11/2021', '987');
INSERT INTO PAYMENT (CUSTOMER_ID, PAYMENT_TYPE, CARD_NAME, CARD_NUMBER, CARD_EXPIRY, CARD_CVV) VALUES (100011, 0, 'Wayland Smithers', '1234-4321-5678-8765', '11/2021', '987');
INSERT INTO PAYMENT (CUSTOMER_ID, PAYMENT_TYPE, CARD_NAME, CARD_NUMBER, CARD_EXPIRY, CARD_CVV) VALUES (100012, 0, 'Montgomery Burns', '1234-4321-5678-8765', '11/2021', '987');
INSERT INTO PAYMENT (CUSTOMER_ID, PAYMENT_TYPE, CARD_NAME, CARD_NUMBER, CARD_EXPIRY, CARD_CVV) VALUES (100013, 0, 'Abe Simpson', '1234-4321-5678-8765', '11/2021', '987');
INSERT INTO PAYMENT (CUSTOMER_ID, PAYMENT_TYPE, CARD_NAME, CARD_NUMBER, CARD_EXPIRY, CARD_CVV) VALUES (100014, 0, 'Nelson Munce', '1234-4321-5678-8765', '11/2021', '987');
INSERT INTO PAYMENT (CUSTOMER_ID, PAYMENT_TYPE, CARD_NAME, CARD_NUMBER, CARD_EXPIRY, CARD_CVV) VALUES (100015, 0, 'Carl Carlson', '1234-4321-5678-8765', '11/2021', '987');
INSERT INTO PAYMENT (CUSTOMER_ID, PAYMENT_TYPE, CARD_NAME, CARD_NUMBER, CARD_EXPIRY, CARD_CVV) VALUES (100016, 0, 'Endna Kabrapabel', '1234-4321-5678-8765', '11/2021', '987');
INSERT INTO PAYMENT (CUSTOMER_ID, PAYMENT_TYPE, CARD_NAME, CARD_NUMBER, CARD_EXPIRY, CARD_CVV) VALUES (100017, 0, 'William Scottsmen', '1234-4321-5678-8765', '11/2021', '987');
INSERT INTO PAYMENT (CUSTOMER_ID, PAYMENT_TYPE, CARD_NAME, CARD_NUMBER, CARD_EXPIRY, CARD_CVV) VALUES (100018, 0, 'Cletus Hill-William', '1234-4321-5678-8765', '11/2021', '987');
INSERT INTO PAYMENT (CUSTOMER_ID, PAYMENT_TYPE, CARD_NAME, CARD_NUMBER, CARD_EXPIRY, CARD_CVV) VALUES (100019, 0, 'Homer Simpson', '1234-4321-5678-8765', '11/2021', '987');
INSERT INTO PAYMENT (CUSTOMER_ID, PAYMENT_TYPE, CARD_NAME, CARD_NUMBER, CARD_EXPIRY, CARD_CVV) VALUES (100020, 0, 'Millhouse Van-housen', '1234-4321-5678-8765', '11/2021', '987');

-- Sample Payment Data
INSERT INTO SHIPPING (CUSTOMER_ID, ADDRESS_LINE_1, ADDRESS_LINE_2, COUNTRY, "STATE", POST_CODE) VALUES (100000, '123 Main St', NULL, 'Australia', 'TAS', '7777');
INSERT INTO SHIPPING (CUSTOMER_ID, ADDRESS_LINE_1, ADDRESS_LINE_2, COUNTRY, "STATE", POST_CODE) VALUES (100001, '123 Clevand St', NULL, 'Australia', 'NSW', '7777');
INSERT INTO SHIPPING (CUSTOMER_ID, ADDRESS_LINE_1, ADDRESS_LINE_2, COUNTRY, "STATE", POST_CODE) VALUES (100002, '123 Evergreen Terrace', NULL, 'Australia', 'NSW', '7777');
INSERT INTO SHIPPING (CUSTOMER_ID, ADDRESS_LINE_1, ADDRESS_LINE_2, COUNTRY, "STATE", POST_CODE) VALUES (100003, '123 Krusty Burger', NULL, 'Australia', 'NSW', '7777');
INSERT INTO SHIPPING (CUSTOMER_ID, ADDRESS_LINE_1, ADDRESS_LINE_2, COUNTRY, "STATE", POST_CODE) VALUES (100004, '123 Shellbyville', NULL, 'Australia', 'NSW', '7777');
INSERT INTO SHIPPING (CUSTOMER_ID, ADDRESS_LINE_1, ADDRESS_LINE_2, COUNTRY, "STATE", POST_CODE) VALUES (100005, '123 Captial City', NULL, 'Australia', 'NSW', '7777');
INSERT INTO SHIPPING (CUSTOMER_ID, ADDRESS_LINE_1, ADDRESS_LINE_2, COUNTRY, "STATE", POST_CODE) VALUES (100006, '123 Idaho', NULL, 'Australia', 'NSW', '7777');
INSERT INTO SHIPPING (CUSTOMER_ID, ADDRESS_LINE_1, ADDRESS_LINE_2, COUNTRY, "STATE", POST_CODE) VALUES (100007, '123 Geroge St', NULL, 'Australia', 'NSW', '7777');
INSERT INTO SHIPPING (CUSTOMER_ID, ADDRESS_LINE_1, ADDRESS_LINE_2, COUNTRY, "STATE", POST_CODE) VALUES (100008, '123 Pitt St', NULL, 'Australia', 'NSW', '7777');
INSERT INTO SHIPPING (CUSTOMER_ID, ADDRESS_LINE_1, ADDRESS_LINE_2, COUNTRY, "STATE", POST_CODE) VALUES (100009, '123 Bridge St', NULL, 'Australia', 'NSW', '7777');
INSERT INTO SHIPPING (CUSTOMER_ID, ADDRESS_LINE_1, ADDRESS_LINE_2, COUNTRY, "STATE", POST_CODE) VALUES (100010, '123 Wattle St', NULL, 'Australia', 'NSW', '7777');
INSERT INTO SHIPPING (CUSTOMER_ID, ADDRESS_LINE_1, ADDRESS_LINE_2, COUNTRY, "STATE", POST_CODE) VALUES (100011, '123 Harris St', NULL, 'Australia', 'NSW', '7777');
INSERT INTO SHIPPING (CUSTOMER_ID, ADDRESS_LINE_1, ADDRESS_LINE_2, COUNTRY, "STATE", POST_CODE) VALUES (100012, '123 Castle Ray St', NULL, 'Australia', 'NSW', '7777');
INSERT INTO SHIPPING (CUSTOMER_ID, ADDRESS_LINE_1, ADDRESS_LINE_2, COUNTRY, "STATE", POST_CODE) VALUES (100013, '123 York St', NULL, 'Australia', 'QLD', '7777');
INSERT INTO SHIPPING (CUSTOMER_ID, ADDRESS_LINE_1, ADDRESS_LINE_2, COUNTRY, "STATE", POST_CODE) VALUES (100014, '123 Surry St', NULL, 'Australia', 'SA', '7777');
INSERT INTO SHIPPING (CUSTOMER_ID, ADDRESS_LINE_1, ADDRESS_LINE_2, COUNTRY, "STATE", POST_CODE) VALUES (100015, '123 Dixon St', NULL, 'Australia', 'VIC', '7777');
INSERT INTO SHIPPING (CUSTOMER_ID, ADDRESS_LINE_1, ADDRESS_LINE_2, COUNTRY, "STATE", POST_CODE) VALUES (100016, '123 Hunter St', NULL, 'Australia', 'NT', '7777');
INSERT INTO SHIPPING (CUSTOMER_ID, ADDRESS_LINE_1, ADDRESS_LINE_2, COUNTRY, "STATE", POST_CODE) VALUES (100017, '123 Sutherland St', NULL, 'Australia', 'WA', '7777');
INSERT INTO SHIPPING (CUSTOMER_ID, ADDRESS_LINE_1, ADDRESS_LINE_2, COUNTRY, "STATE", POST_CODE) VALUES (100018, '123 Bay St', NULL, 'Australia', 'ACT', '7777');
INSERT INTO SHIPPING (CUSTOMER_ID, ADDRESS_LINE_1, ADDRESS_LINE_2, COUNTRY, "STATE", POST_CODE) VALUES (100019, '123 De fault av', NULL, 'Australia', 'SA', '7777');
INSERT INTO SHIPPING (CUSTOMER_ID, ADDRESS_LINE_1, ADDRESS_LINE_2, COUNTRY, "STATE", POST_CODE) VALUES (100020, '123 Strugle St', NULL, 'Australia', 'QLD', '7777');