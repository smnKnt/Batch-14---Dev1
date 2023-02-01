SoqlDemo.parentToChild_SOQL1();
SoqlDemo.childToParent_SOQL1();
SoqlDemo.accountFilter_SOQL('GenePoint');
SoqlDemo.accountFilter_SOQL('sfdc');
SoqlDemo.accountFilter_SOQL('sForce');
SoqlDemo.accountFilter_SOQL();
SoqlDemo.accountSOQL_3();
SoqlDemo.accountSOQL_2();
SoqlDemo.accounSOQL_11();
SoqlDemo.accounSOQL_1();








SELECT Id, Name, Phone FROM Account;
SELECT Id, Name, Project_Name__c, Status__c FROM Salesforce_Project__c;
SELECT Id, Name, Subject__c, Priority__c FROM Salesforce_Ticket__c;
SELECT Name, Id, Type, BillingCity FROM Account;

SELECT Id, Name, Mailingcity FROM Contact WHERE Name LIKE '%a';
SELECT Id, Name, Mailingcity FROM Contact WHERE Name LIKE 'a%';
SELECT Id, Name, Mailingcity FROM Contact WHERE Name LIKE '%a%';
SELECT Id, Name, Type, BillingCity FROM Account ORDER BY Name DESC;
SELECT Id, Name, Type, BillingCity, CreatedDate FROM Account ORDER BY CreatedDate DESC;
SELECT Id, Name, Type, BillingCity, CreatedDate FROM Account ORDER BY CreatedDate DESC LIMIT 5;
SELECT Id, Name, Industry FROM Account WHERE Industry = 'energy' LIMIT 1;
SELECT Id, Name, Industry,Phone FROM account WHERE Phone !='';
SELECT Id, Name, Project_Name__c, Status__c FROM Salesforce_Project__c WHERE Status__c != 'new';
SELECT Id, Name, Industry, Phone, AccountNumber FROM account WHERE (Phone !='' OR website !='') AND AccountNumber!=null; 
SELECT Id, Name, Industry, Phone, AccountNumber, AnnualRevenue FROM Account WHERE AnnualRevenue > 100000;

SELECT Id, Name, Industry, Phone, AccountNumber, AnnualRevenue FROM Account WHERE CreatedDate > LAST_WEEK; 
SELECT Id, Name, Industry, Phone, AccountNumber, AnnualRevenue FROM Account WHERE CreatedDate = LAST_N_DAYS:365;

SELECT Id, Name, Mailingcity FROM Contact WHERE Mailingcity = 'paris' or Mailingcity = 'lawrence' or Mailingcity = 'burlington';
SELECT Id, Name, Mailingcity FROM Contact WHERE Mailingcity IN ('paris','lawrence','burlington');
SELECT Id, Name, Mailingcity FROM Contact WHERE Mailingcity NOT IN ('paris','lawrence','burlington');

SELECT Id, Name, Subject__c, Priority__c, Salesforce_Project__r.Project_Name__c,Salesforce_Project__r.Status__c FROM Salesforce_Ticket__c;

SELECT COUNT() FROM Contact;
SELECT COUNT(Id) FROM Contact;
SELECT COUNT(MailingCity) FROM Contact;
SELECT LeadSource, COUNT(Name) FROM Lead GROUP BY LeadSource;
SELECT SUM(Amount), StageName FROM Opportunity GROUP BY StageName;
SELECT SUM(Amount), AVG(Amount), StageName FROM Opportunity GROUP BY StageName;
SELECT COUNT(Id), Name FROM Account GROUP BY Name;
SELECT COUNT(Id), Name FROM Account GROUP BY Name HAVING COUNT(Id) >1;
SELECT SUM(Amount), StageName FROM Opportunity GROUP BY StageName HAVING SUM(Amount) > 500000;







SELECT Id, Name, (SELECT Id, Name FROM Salesforce_Tickets__r) FROM Salesforce_Project__c






























for (SObjectField field : SObjectType.Salesforce_Project__c.fields.getMap().values()) //case yerine istediğimiz objecti yazabiliriz.
{
    if (!field.getDescribe().isNillable())
    {
        system.debug(field);
    }

}