SELECT 
UnifySalesforceContactID,
MAX(CASE WHEN
CallDate IS NULL THEN 0 ELSE 1 END) AS 'Dialed'
FROM AARDW.[AARPL].[CallLog]
WHERE CallDate > '2020-11-28'
AND campaign LIKE '%fafsa%'
GROUP BY UnifySalesforceContactID
