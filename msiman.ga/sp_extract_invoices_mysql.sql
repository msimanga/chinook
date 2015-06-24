CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_extract_invoices`(country VARCHAR(30))
BEGIN
SET @sql = concat("
SELECT 
	'InvoiceId'
    ,'CustomerId'
    ,'InvoiceDate'
    ,'BillingCity'
    ,'BillingCountry'
UNION    
SELECT 
	InvoiceId
    ,CustomerId
    ,InvoiceDate
    ,BillingCity
    ,BillingCountry
FROM 
	Invoice
WHERE 
	BillingCountry = '", country, "'
INTO OUTFILE '/tmp/", country,".csv'");

PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END