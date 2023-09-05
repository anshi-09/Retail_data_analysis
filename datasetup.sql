CREATE database RetailSalesdata;
use RetailSalesdata;
CREATE TABLE Sales_data_transactions (
customer_id varchar(255),
trans_date datetime,
trans_amount INT);

DROP TABLE Sales_data_transactions;
CREATE TABLE Sales_data_response (
customer_id varchar(255) PRIMARY KEY,
response INT);

LOAD DATA INFILE 'C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\Retail_Data_Transactions.csv'
INTO TABLE Sales_data_transactions
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;