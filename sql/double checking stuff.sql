SELECT 

DISTINCT ContactID, MAX(f0.DateofEntry)
FROM Data_Reporting.[dbo].[Remap_NoFAFSA_Dialer] f0
INNER join UnifyStaging.dbo.Opportunity o 
ON f0.ContactID = o.Contact__c
INNER JOIN UnifyStaging.dbo.RecordType rt ON rt.id = o.RecordTypeId 
INNER JOIN UnifyStaging.dbo.hed__Term__c t ON t.id = o.Term__c
WHERE Acad = 'GR'
AND rt.name = 'admission opportunity'
AND f0.Icosagonain_Expirmentation_Cell__c IS NOT NULL
--and f0.ContactID = '0033l00002kDCEDAA4'
and t.name = '21TW3'

GROUP BY ContactID



SELECT *
FROM UnifyStaging.dbo.Opportunity o 
INNER JOIN UnifyStaging.dbo.RecordType rt ON rt.id = o.RecordTypeId 
WHERE rt.NAME = 'Admission Opportunity'

SELECT * FROM UnifyStaging.dbo.RecordType
WHERE name = 'admission opportunity'


SELECT TOP 1000 * FROM msr.fa.CRILimboDocDetails
WHERE [Student ID] = '2052049'



SELECT * FROM msr.fa.CRILimboDocDetails
WHERE [Student ID] = '2052049'


SELECT ContactID, MAX(DateofEntry)[MaxDate]
FROM 
Data_Reporting.[dbo].[Remap_NoFAFSA_Dialer]
WHERE Acad = 'GR'

---there were quite a few records that did not have an icosagonian value, so did not want to keep in control group as it made it more than 50/50 split
AND Icosagonain_Expirmentation_Cell__c IS NOT null
GROUP BY ContactID



SELECT *
--DISTINCT [Student ID], [Planned Start Term], [Verification Type], COUNT([Admission Status])
FROM  msr.fa.CRILimboDocDetails 
WHERE  [Planned Start Term] in ('21TW3')
AND [Student ID] = '2052049'
--GROUP BY [Student ID], [Planned Start Term], [Verification Type]

