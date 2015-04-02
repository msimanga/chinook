/* 
Postgresql Syntax
Formatting guideline, see http://msiman.ga for details 
*/

SELECT
   0
   ,b.invoicedate
   ,to_char(b.invoicedate, 'Month') as invoice_month
  ,COUNT(DISTINCT a.customerid)
FROM
  customer a
  JOIN invoice b ON a.customerid = b.customerid
WHERE
  1=1
  --AND to_char(b.invoicedate, 'MM') = '04' 
  --AND b.invoicedate BETWEEN '2009-04-01' AND '2009-31-04'
GROUP BY
  invoice_month
   ,b.invoicedate