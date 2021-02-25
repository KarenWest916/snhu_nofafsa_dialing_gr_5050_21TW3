


SELECT 
UnifySalesforceContactID,
MAX(CASE WHEN
CallDate IS NULL THEN 0 ELSE 1 END) AS [Dialed]
--SELECT Disposition, 
,MAX(CASE WHEN disposition IN (

'DNC Request',
'Do Not Call',
'Follow up Call',
'Not Using FAFSA',
'Successful Transfer',
'Transferred To 3rd Party'

) THEN 1 ELSE 0 END) AS [Contacted]
--Campaign, DialingList, 
--,COUNT(1)
--SELECT *
FROM AARDW.[AARPL].[CallLog]
WHERE CallDate > '2020-11-28'
AND campaign = 'No FAFSA OB Dialer' --AND Disposition = 'No Contact'
--GROUP BY Disposition
--Campaign, DialingList
GROUP BY UnifySalesforceContactID
