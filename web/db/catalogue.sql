/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  blue
 * Created: 06/06/2020
 */

CREATE TABLE IOTBAY.CATALOGUE(
    PRODUCTID VARCHAR(30),
    PRODUCTNAME VARCHAR(255),
    PRODUCTTYPE VARCHAR(25),
    PRODUCTDESCRIPTION VARCHAR(255),
    PRODUCTPRICE real,
    PRODUCTSTOCK VARCHAR(255),
    CONSTRAINT primary_key PRIMARY KEY (PRODUCTID)
);