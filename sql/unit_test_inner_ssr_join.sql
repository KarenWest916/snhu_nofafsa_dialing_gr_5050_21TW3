


/*
SMOKE TEST 
*/




--RECEIVED FAFSA
SELECT * FROM Data_Reporting.DBO.Remap_NoFAFSA_Dialer WHERE ContactID = '0031N000022q5abQAA' --only completed original one
--'0033l00002iZuYNAA0'
--'0033l00002iYSKZAA4'


SELECT * FROM MSR.FA.CRILimboDocDetails WHERE [Student ID] = '2014012'
--'2022230'
--'2017507'

--"Wrong FAFSA", completed the next day
SELECT * FROM MSR.informer.ODS_CORR_RECEIVED WHERE MAILING_ID = '2014012'
--'2022230'
--'2017507'

