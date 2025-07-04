-- ----------Create Database-----------
create database zomatodb;
use zomatodb;
drop table zomato;
-- ---------Import Data---------

select*from zomato;
select count(Order_ID) from zomato;
SET SQL_SAFE_UPDATES = 0;

-- --------Cleaning Data---------

ALTER TABLE zomato
ADD Order_Date_ VARCHAR(20),
ADD Review_Date_ VARCHAR(20);

UPDATE zomato
SET 
  Order_Date_ = DATE_FORMAT(Order_Date, '%d-%m-%Y'),
  Review_Date_ = DATE_FORMAT(Review_Date, '%d-%m-%Y');

ALTER TABLE zomato
DROP COLUMN Order_Date,
DROP COLUMN Review_Date,
Drop COLUMN Review_Text;

ALTER TABLE zomato
ADD Discount_Status VARCHAR(5);

ALTER TABLE zomato 
ADD Discount_Status VARCHAR(5);

UPDATE zomato
SET Discount_Status = CASE 
    WHEN Is_Discount_Applied = 'TRUE' THEN 'Yes'
    ELSE 'No'
END;

ALTER TABLE zomato
DROP COLUMN Is_Discount_Applied;


select*from zomato;


