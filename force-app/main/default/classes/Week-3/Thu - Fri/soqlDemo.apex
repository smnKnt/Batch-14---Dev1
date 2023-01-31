SoqlDemo.accountSOQL_3();
SoqlDemo.accountSOQL_2();
SoqlDemo.accounSOQL_11();
SoqlDemo.accounSOQL_1();
SoqlDemo.accountFilter_SOQL('Burlington Textiles Corp of America');








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

SELECT Id, Name, Subject__c, Priority__c, Salesforce_Project__r.Project_Name__c, Salesforce_Project__r.Status__c FROM Salesforce_Ticket__c






































for (SObjectField field : SObjectType.Salesforce_Project__c.fields.getMap().values()) //case yerine istediğimiz objecti yazabiliriz.
{
    if (!field.getDescribe().isNillable())
    {
        system.debug(field);
    }

}