CREATE DATABASE store_downloads;
USE store_downloads;

CREATE TABLE USER(
    USER_ID  INT  PRIMARY KEY  IDENTITY,
    EMAIL   VARCHAR(255) NOT NULL,
    FIRST_NAME VARCHAR(60) NOT NULL,
    LAST_NAME VARCHAR(60) NOT NULL,
    DOWNLOADS REFERENCES DOWNLOADS(DOWNLOADS_ID)               
);

CREATE TABLE DOWNLOADS(
    DOWNLOADS_ID  INT  PRIMARY KEY  IDENTITY,
    DOWLOADS_NAME  VARCHAR(60)  NOT NULL,
    DOWLOADS_DATE   DATETIME  DEFAULT NULL,
    PRODUCTS REFERENCES PRODUCTS(PRODUCT_ID)
);

CREATE TABLE PRODUCTS(
    PRODUCT_ID INT PRIMARY KEY  IDENTITY,
    PRODUCT_NAME VARCHAR(60)  NOT NULL
);
